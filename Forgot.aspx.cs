using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Drawing;

public partial class Forgot : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ABHISHEK-PC;Initial Catalog=university;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string username = string.Empty;
        string password = string.Empty;
        using (con)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT u_id, password FROM student_signup WHERE email = @u_id"))
            {
                cmd.Parameters.AddWithValue("@u_id", TextBox1.Text);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["u_id"].ToString();
                        password = sdr["password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("shettytana@gmail.com", TextBox1.Text);
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "shettytana@gmail.com";
            NetworkCred.Password = "theperfectdevil";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            Label1.ForeColor = Color.Green;
            Label1.Text = "Password has been sent to your email address.";
        }
        else
        {
            Label1.ForeColor = Color.Red;
            Label1.Text = "This email address does not match our records.";
        }
    }
   
}