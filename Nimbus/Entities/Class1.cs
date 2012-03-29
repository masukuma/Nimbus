using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entities
{
    public class Class1
    {
    }

    [Serializable]
    public class IFingerprint : SourceAFIS.Simple.Fingerprint
    {
        //public Finger finger;
        public string filename;
    }

    // Inherit from Person in order to add Name field
    [Serializable]
    public class IPerson : SourceAFIS.Simple.Person
    {
        public string names;
        public string registrationNumber;
    }
}
