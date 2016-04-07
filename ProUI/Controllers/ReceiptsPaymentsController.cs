using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Mvc;
using Newtonsoft.Json;

using ProBL;
using ProUI.Models;

namespace ProUI.Controllers
{
    public class ReceiptsPaymentsController : Controller
    {
        BL_ReceiptsPayments bl_receiptspayments = new BL_ReceiptsPayments();

        [HttpGet]
        public string getReceiptsPayments()
        {
            return bl_receiptspayments.bl_receiptspayments();
        }

        [HttpPost]
        public string getFilterReceiptsPayments(string jsonOfLog)
        {
            var js = new JavaScriptSerializer();
            FilterModel user = js.Deserialize<FilterModel>(jsonOfLog);
            return bl_receiptspayments.bl_filterdata(user.fromdate, user.todate);
        }

    }
}
