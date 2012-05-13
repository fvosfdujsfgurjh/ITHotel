using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Entity_Model;
using HotelWebApplication.Models.Business_Logic;


namespace HotelWebApplication.Controllers
{
    public class SignInController : Controller
    {
        
        [HttpPost]
        public ActionResult Login(string login, string password)
        {
            User user = new User { Login = login, Password = password };
            Client cl;
            try
            {
                cl = HotelContext.SignIn(user);
                Session.Add("Client", cl);
            }
            catch (Exception ex)
            {
                return Json(new { success = false, error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = true, name = cl.PersonalData }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public void Logout()
        {
            Session["Client"] = null;
        }

    }
}
