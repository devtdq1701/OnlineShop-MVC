using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace OnlineShop
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
        //protected void Application_Error(object sender, EventArgs e)
        //{

        //    string area = Request.FilePath.Split('/')[1];
        //    if (area.Equals("Admin"))
        //    {
        //        Exception exception = Server.GetLastError();
        //        Response.Clear();
        //        HttpException httpException = exception as HttpException;
        //        Response.TrySkipIisCustomErrors = true;

        //        if (httpException == null)
        //        {
        //            Server.Transfer("/Admin/Home/Index");
        //        }
        //        else
        //        {
        //            switch (httpException.GetHttpCode())
        //            {
        //                case 404:
        //                    Server.Transfer("/Admin/Error/Error404");
        //                    break;
        //                case 500:
        //                default:
        //                    Server.Transfer("/Admin/Error/Error404");
        //                    break;
        //            }
        //        }
        //        Server.ClearError();
        //    }
        //}
    }
}
