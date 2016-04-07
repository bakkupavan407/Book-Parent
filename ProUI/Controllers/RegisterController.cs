using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Mvc;
using System.Linq;
using Newtonsoft.Json;

using ProBL;
using ProUI.Models;

namespace ProUI.Controllers
{
    public class RegisterController : Controller
    {
        BL_Register blRegister = new BL_Register();

        [HttpPost]
        public string saveUser()
        {
            return blRegister.bl_Saveuser();
        }

        [HttpPost]
        public string loginUser(string jsonOfLog)
        {
            var js = new JavaScriptSerializer();
            LoginModel user = js.Deserialize<LoginModel>(jsonOfLog);

            var mystring = blRegister.bl_LoginUser(user.username, user.password);

            LoginUserData ldata = js.Deserialize<LoginUserData>(mystring);
            Session["username"] = ldata.username;
            Session["userid"] = ldata.userid;

            return mystring;
        }
    }
}
