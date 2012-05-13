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
            Client client = (Client) Session["Client"];
            if (client != null)
            {
                ViewData["PersonalData"] = client.PersonalData;
            }
            return View(ViewData);
        }



        public ActionResult Rooms()
        {
            return View();
        }

        public ActionResult Registration()
        {
            return View();
        }        

        

        [HttpGet]
        public ActionResult Account()
        {
            return View();
        }
    }
}
