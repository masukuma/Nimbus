using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Diagnostics;
using Microsoft.WindowsAzure.ServiceRuntime;
using Microsoft.WindowsAzure.StorageClient;
using Entities;
using MongoDB.Driver;
using MongoDB.Bson.Serialization;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace NimbusCruncher
{
    public class WorkerRole : RoleEntryPoint
    {
        MongoCollection<IPerson> dbrecords = null;
        List<IPerson> allrecords = null;

        private List<IPerson> LoadRecords(MongoCursor<IPerson> records)
        {
            if (allrecords == null)
            {
                Trace.WriteLine("Loading Data...");
                allrecords = records.ToList<IPerson>();
            }
            return allrecords;
        }

        public override void Run()
        {
            // This is a sample worker implementation. Replace with your logic.
            Trace.WriteLine("NimbusCruncher entry point called", "Information");

            SourceAFIS.Simple.AfisEngine Afis = new SourceAFIS.Simple.AfisEngine();
            //IPerson probe = CreateAFISPerson(applicant);

            /*
            BsonRegularExpression regex = BsonRegularExpression.Create(new Regex("/^03/"));
            var mongoquery = Query.Matches("registrationNumber", regex);
            var records = dbrecords.Find(mongoquery).SetLimit(200);
             */
            var records = dbrecords.FindAll();
            /// records.BatchSize = 10;


            Afis.Threshold = 30; ;

            Thread t = new Thread(delegate()
            {

                allrecords = LoadRecords(records);
                Trace.WriteLine("Searching...");
                int maxnum = allrecords.Count;
                int count = 1;

                List<IPerson> workrecords = allrecords.Clone<List<IPerson>>();
                for (int i = workrecords.Count - 1; i >= 0; i--)
                {
                    IPerson probe = workrecords[i];
                    workrecords.RemoveAt(i);
                    Trace.WriteLine(string.Format("identifying - {0} ({1})", probe.names, probe.registrationNumber));
                    var matches = Afis.Identify(probe, workrecords);
                    int matchescount = matches.Count();
                    if (matchescount > 1)
                    {
                        //probe.registrationNumber;

                        //probe.names;

                        foreach (IPerson match in matches)
                        {
                            // Compute similarity score
                            float score = Afis.Verify(probe, match);

                            //string similarityscore = string.Format("Similarity score between {0} and {1} = {2:F3}", probe.registrationNumber, match.registrationNumber, score);
                            // Print out any non-null result
                            //string outputstring = string.Format("Probe {0} {1} matches registered person {2} {3}", probe.registrationNumber, probe.names, match.registrationNumber, match.names);
                            //MessageBox.Show(outputstring + "\n" + similarityscore);
                            //match.registrationNumber;
                            //match.names;
                            //score.ToString();

                            workrecords.Remove(workrecords.Find(a => a.registrationNumber == match.registrationNumber));
                        }
                        i = i - matchescount;

                    }
                    count++;
                }
                Trace.WriteLine("done processing - " + maxnum);
            });

            t.Start();
        }

        private void LoadDataFromDB()
        {
            // Create server settings to pass connection string, timeout, etc.
            MongoServerSettings settings = new MongoServerSettings();
            settings.Server = new MongoServerAddress("localhost", 27017);
            //// Create server object to communicate with our server
            MongoServer server = new MongoServer(settings);

            if (!BsonClassMap.IsClassMapRegistered(typeof(IPerson)))
            {
                BsonClassMap.RegisterClassMap<IPerson>(cm =>
                {
                    cm.AutoMap();
                    cm.SetIdMember(cm.GetMemberMap(c => c.registrationNumber));
                }
                );
                // Console.WriteLine("Registering Class");
            }

            if (!BsonClassMap.IsClassMapRegistered(typeof(SourceAFIS.Simple.Fingerprint)))
            {
                BsonClassMap.RegisterClassMap<SourceAFIS.Simple.Fingerprint>(cm =>
                {
                    cm.MapProperty<byte[,]>(c => c.Image);
                    cm.MapProperty<byte[]>(c => c.Template);
                    cm.UnmapField(c => c.AsBitmap);
                    cm.MapProperty<byte[]>(c => c.AsImageData);
                    cm.MapProperty<byte[]>(c => c.AsIsoTemplate);
                    cm.UnmapField(c => c.AsXmlTemplate);
                }
                );
            }

            var database = server.GetDatabase("AfisDB");

            dbrecords = database.GetCollection<IPerson>("IPerson");
        }

        public override bool OnStart()
        {
            // Set the maximum number of concurrent connections 
            ServicePointManager.DefaultConnectionLimit = 12;

            // For information on handling configuration changes
            // see the MSDN topic at http://go.microsoft.com/fwlink/?LinkId=166357.

            return base.OnStart();
        }
    }
    static class extention
    {
        public static T Clone<T>(this T obj)
        {
            using (var ms = new MemoryStream())
            {
                var formatter = new BinaryFormatter();
                formatter.Serialize(ms, obj);
                ms.Position = 0;

                return (T)formatter.Deserialize(ms);
            }
        }
    }
}
