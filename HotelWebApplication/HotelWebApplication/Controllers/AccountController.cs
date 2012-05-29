using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Business_Logic;
using HotelWebApplication.Models.Entity_Model;

namespace HotelWebApplication.Controllers
{
    public class AccountController : Controller
    {

        [HttpPost]
        public ActionResult Account(string id)
        {
            try
            {
                int client_id = Convert.ToInt32(id);
                Client client = HotelContext.GetClientById(client_id);
                //return View("Account", client);
                string path = String.Format("/Account/ClientAccount?id={0}", client.ClientID.ToString());
                return Json(new { success = true, path = path }, JsonRequestBehavior.AllowGet);
            }
            catch (InvalidOperationException)
            {
                return JavaScript("alert('you must login first');");
            }
        }

        [HttpGet]
        public ActionResult ClientAccount(int id)
        {
            Client cl = HotelContext.GetClientById(id);
            return View("Account", cl);
        }

        [HttpPost]
        public ActionResult SaveAccount(string id, string name, string birthdate, string phone)
        {
            Client cl = HotelContext.GetClientById(Convert.ToInt32(id));
            cl.PersonalData = name;
            cl.Phone = phone;
            cl.BirthDate = Convert.ToDateTime(birthdate);
            if (cl == null)
                return Json(new { success = false, error = "client was not found" }, JsonRequestBehavior.AllowGet);
            try
            {
                HotelContext.SaveAccountChanges(cl);
            }
            catch (NullReferenceException ex)
            {
                return Json(new { success = false, error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
            catch (InvalidOperationException ex)
            {
                return Json(new { success = false, error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }
    }
}
