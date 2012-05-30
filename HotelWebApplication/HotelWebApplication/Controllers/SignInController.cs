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
                //return JavaScript("$.cookie('sid','edfgjergerf34534534ldnfg')");
                /*var cookieUser = new
                {
                    id = cl.ClientID,
                    birth_date = cl.BirthDate,
                    phone = cl.Phone,
                    personal_data = cl.PersonalData,
                    login = login,
                    password = password
                };*/
                string client_id = cl.ClientID.ToString();
                string personal_data = cl.PersonalData;


                return Json(new {id = client_id, name = personal_data}, JsonRequestBehavior.AllowGet);
                //string result = String.Format("alert('Hello ' {0});", cl.PersonalData);
                //return JavaScript("alert('ok')");
            }
            catch (Exception ex)
            {
                return Json(new { success = false, error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
