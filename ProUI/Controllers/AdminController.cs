using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProBL;

namespace ProUI.Controllers
{
    public class AdminController : Controller
    {
        BL_GetData blgetdata = new BL_GetData();

        [HttpGet]
        public string getAllUsers()
        {
            return blgetdata.bl_adminAllusers();
        }

    }
}
