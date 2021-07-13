using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application["uid"] = "";
        Application["aid"] = "";

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("administrater/adminlogin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("student/studentlogin.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("student/studentsignup.aspx");
    }


}
