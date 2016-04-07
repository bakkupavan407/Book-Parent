using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProBL;

namespace ProUI.Controllers
{
    public class GetDataController : Controller
    {
        BL_GetData getdata = new BL_GetData();

        [HttpGet]
        public string getLedgers()
        {
            return getdata.bl_getLedgers();
        }

    }
}
