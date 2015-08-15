using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadisCacheDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strValue = "yourvalue";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Session.Add("yourkey", strValue);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object objValue = Session["yourkey"];
            if (objValue != null)
                strValue = (string)objValue;
            Label1.Text = strValue;
        }
    }
}