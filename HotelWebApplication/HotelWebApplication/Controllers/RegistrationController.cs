using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Business_Logic;
using HotelWebApplication.Models.Entity_Model;


namespace HotelWebApplication.Controllers
{
    public class RegistrationController : Controller
    {
        //
        // GET: /Registration/

        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Reg(string login, string password, string name, DateTime? bithdate, string phone)
        {
            User user = HotelContext.Registration(new User { Login = login, Password = password });
            if (user == null)
                return JavaScript("alert('user with this login already exists, please try again');");
            Client cl = new Client
            {
                UserID = user.UserID,
                PersonalData = name,
            };
            if (bithdate.HasValue)
                cl.BirthDate = bithdate.Value;
            if (phone != null)
                cl.Phone = phone;
            HotelContext.AddClient(cl);
            cl = HotelContext.SignIn(user);
            return Json(new { id = cl.ClientID, name = cl.PersonalData }, JsonRequestBehavior.AllowGet);
        }
    }
}
