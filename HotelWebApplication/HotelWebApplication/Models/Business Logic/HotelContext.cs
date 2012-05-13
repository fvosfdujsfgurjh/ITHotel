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
    }
}