using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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

        public ActionResult Account()
        {
            return View();
        }


        public ActionResult About()
        {
            return View();
        }

        public ActionResult Rooms()
        {
            return View();
        }
    }
}
