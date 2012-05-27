using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Business_Logic;
using HotelWebApplication.Models.Entity_Model;

namespace HotelWebApplication.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }



        public ActionResult Rooms()
        {
            return View();
        }

        public ActionResult Registration()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }        
        

        
        public ActionResult Account()
        {
            Client cl = (Client)Session["Client"];
            if (cl == null)
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            else
                return View(cl);
        }
    }
}
