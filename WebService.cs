using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {
    DataClassesDataContext lnq_obj = new DataClassesDataContext();
    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    [WebMethod]
    public string[] Get_city(String prefixText, int count)
    {
        var id = (from a in lnq_obj.city_msts
                  orderby a.city.Contains(prefixText) descending
                  where a.city.Contains(prefixText)
                  select a.city).Distinct();
        return id.ToArray<string>();
    }
}
