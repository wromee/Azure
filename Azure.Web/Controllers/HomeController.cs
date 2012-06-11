using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Azure.DomainModel;
using Azure.DataRepository;

namespace Azure.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            IList<User> users = UserRepository.GetUsers();
            return View(users);
        }
    }
}
