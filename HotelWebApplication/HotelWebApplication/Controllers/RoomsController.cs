using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Business_Logic;
using HotelWebApplication.Models.Entity_Model;

namespace HotelWebApplication.Controllers
{
    public class RoomsController : Controller
    {
        //
        // GET: /Rooms/

        public ActionResult RoomInfo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RoomsList(string room_type)
        {
            List<Room> rooms = HotelContext.GetRoomsList(Convert.ToInt32(room_type));
            return View("RoomsList", rooms); 
        }

        [HttpPost]
        public ActionResult GetAllRooms()
        {
            List<Room> rooms = HotelContext.GetAllRooms();
            return View("RoomsList", rooms);
        }

        [HttpPost]
        public ActionResult RoomInfo(string room_id)
        {
            Room room = HotelContext.GetRoomInfo(Convert.ToInt32(room_id));
            return View("RoomInfo", room);
        }
    }
}
