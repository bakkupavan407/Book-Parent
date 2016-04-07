using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProUI.Models
{
    public class DataEntryModel
    {
        public string date { get; set; }
        public Int64 ledgerid { get; set; }
        public double amount { get; set; }
        public string narration { get; set; }
    }
}