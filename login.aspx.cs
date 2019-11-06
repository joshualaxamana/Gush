using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void userlevel()
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select userlevel from users where username ='" + txtUserName.Text +"'";
        SqlDataReader data = cmd.ExecuteReader();
        while (data.Read())
        {
            int userlevel = (Int32)data["userlevel"];

            if (userlevel == 1)
            {
                Response.Redirect("Dashboard.aspx");
            } else
            {
                Response.Redirect("EmployeeInventory.aspx");
            }
        }
        con.Close();

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetCon()))
        {
            con.Open();
            string SQL = @"SELECT userID FROM users
                WHERE userName=@userName AND password=@password";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@userName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@password",txtPassword.Text);

                using (SqlDataReader data = cmd.ExecuteReader())
                {
                    if (data.HasRows)
                    {
                        while (data.Read())
                        {
                            Session["userid"] = data["UserID"].ToString();
                        }
                        userlevel();
                    }


                }
            }
        }
    }
}