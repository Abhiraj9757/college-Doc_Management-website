using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addresume : System.Web.UI.Page
{
    

    static String resumelink;

    static Int32 applicationid;

   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (uploadresume() == true)
        {
            String query = "insert into candidatedetail(applicationid,stuname,address,emailaddress,mobilenumber,course,resumefile) values(" + applicationid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + resumelink + "')" ;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["universityConnectionString"].ConnectionString);
            
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Your Application ID is " + applicationid.ToString() + " for Further Reference . We will Reach at You Soon. Thank you.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
    private Boolean uploadresume()
    {
        Boolean resumesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "application/pdf")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                getapplicationid();
                FileUpload1.SaveAs(Server.MapPath("~/UploadedResume/") + applicationid + ".pdf");

                resumelink = "UploadedResume/" + applicationid + ".pdf";
                resumesaved = true;
                Label2.Text = "";
            }
            else
            {
                Label2.Text = "Upload Resume in PDF Format Only";
            }

        }
        else
        {
            Label2.Text = "Kindly Upload Resume Before Apply in PDF Format";
        }


        return resumesaved;
    }
    public void getapplicationid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["universityConnectionString"].ConnectionString);
      
        SqlConnection scon = (con);
        String myquery = "select applicationid from Candidatedetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            applicationid = 10001;

        }
        else
        {

            SqlConnection mycon1 = new SqlConnection(ConfigurationManager.ConnectionStrings["universityConnectionString"].ConnectionString);

            
            SqlConnection scon1 = (mycon1);
            String myquery1 = "select max(applicationid) from candidatedetail";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
            applicationid = applicationid + 1;
            scon1.Close();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}