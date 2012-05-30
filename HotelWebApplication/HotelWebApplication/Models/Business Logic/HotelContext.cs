using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelWebApplication.Models.Entity_Model;


namespace HotelWebApplication.Models.Business_Logic
{
    public class HotelContext
    {
        public static Client SignIn(User user)
        {
            if (user == null)
                throw new InvalidOperationException("invalid login or password value, please check and try again");
            Client client = null;
            using (HoteDb db = new HoteDb())
            {
                try
                {
                    client = db.Clients.Where(cl => cl.User.Login == user.Login && cl.User.Password == user.Password).First();
                }
                catch (InvalidOperationException)
                {
                    throw new InvalidOperationException("invalid login-password combination");
                }
            }
            return client;
        }

        public static Client GetClientById(int client_id)
        {
            using (HoteDb dataModel = new HoteDb())
            {
                try
                {
                    Client client = dataModel.Clients.Where(cl => cl.ClientID == client_id).First();
                    return client;
                }
                catch(InvalidOperationException)
                {
                    throw new InvalidOperationException("Client was not found");
                }
            }
        }

        public static User Registration(User user)
        {
            using (HoteDb dataModel = new HoteDb())
            {
                bool isUserExists = dataModel.Users.Any(us => us.Login == user.Login && us.Password == user.Password);
                if (!isUserExists)
                {
                    dataModel.Users.AddObject(user);
                    dataModel.SaveChanges();
                    return user;
                }
                return null;                                
            }
        }

        public static void AddClient(Client cl)
        {
            using (HoteDb dataModel = new HoteDb())
            {
                dataModel.Clients.AddObject(cl);
                dataModel.SaveChanges();
            }
        }

        public static void SaveAccountChanges(Client client)
        {
            if (client == null)
                throw new NullReferenceException("client is null");
            using (HoteDb db = new HoteDb())
            {
                try
                {
                    Client cl = db.Clients.Where(c => c.ClientID == client.ClientID).First();
                    cl.PersonalData = client.PersonalData;
                    cl.BirthDate = client.BirthDate;
                    cl.Phone = client.Phone;
                    db.SaveChanges();
                }
                catch(InvalidOperationException)
                {
                    throw new InvalidOperationException("client was not found");
                }
            }
        }

        public static List<Room> GetAllRooms()
        {
            List<Room> rooms = new List<Room>();
            using (HoteDb db = new HoteDb())
            {
                rooms = db.Rooms.ToList<Room>();
            }
            return rooms;
        }

        public static List<Room> GetRoomsList(int room_type)
        {
            using (HoteDb dataModel = new HoteDb())
            {
                return dataModel.Rooms.Where(r => r.RoomTypeID == room_type).ToList();
            }
        }

        public static List<Order> GetAllClientOrders(int client_id)
        {
            if (client_id < 0)
                throw new InvalidOperationException("client is not found, please, login and try again");
            List<Order> orders = new List<Order>();
            using (HoteDb db = new HoteDb())
            {
                try
                {
                    orders = db.Orders.Where(order => order.ClientID == client_id).ToList();
                }
                catch (InvalidOperationException)
                {
                    return orders;
                }
            }
            return orders;
        }
    }
}