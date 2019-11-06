using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    bool IsExisting(string username)
    {
        bool existing = false; // initial value
        using (SqlConnection con = new SqlConnection(Util.GetCon()))
        {
            con.Open();
            string SQL = @"SELECT userName FROM users WHERE userName=@userName";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@userName", username);
                existing = cmd.ExecuteScalar() == null ? false : true;
            }
        }
        return existing;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (IsExisting(txtUserName.Text))
        {
            error.Visible = true;
        }
        else
        {
            /*
            using (SqlConnection con = new SqlConnection(Util.GetCon()))
            {
                con.Open();
                string SQL = @"INSERT INTO users (userID, userName, password, userFN, userLN, userlevel) VALUES
                    ((SELECT ISNULL(MAX(userID)+1,0) FROM dbo.users WITH(SERIALIZABLE, UPDLOCK)), @userName, @password, @userFN, @userLN, @userLevel)";

                using (SqlCommand cmd = new SqlCommand(SQL, con))
                {
                    cmd.Parameters.AddWithValue("@userName","'" + txtUserName.Text +"'");
                    cmd.Parameters.AddWithValue("@password", "'" + Util.CreateSHAHash(txtPassword.Text) + "'");
                    cmd.Parameters.AddWithValue("@userFN", "'" + txtFN.Text + "'");
                    cmd.Parameters.AddWithValue("@userLN", "'" +txtLN.Text+ "'");
                    cmd.Parameters.AddWithValue("@userLevel", "'"  + txtUserLevel.Text + "'");
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
            }
            */
            SqlConnection con = new SqlConnection(Util.GetCon());
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = @"INSERT INTO users(userID, userName, password, userFN, userLN, userlevel) VALUES
                    ((SELECT ISNULL(MAX(userID) + 1, 0) FROM dbo.users WITH(SERIALIZABLE, UPDLOCK)),'"+ txtUserName.Text +"','"+ txtPassword.Text +"', '" + txtFN.Text + "', '" + txtLN.Text +"', " + txtUserLevel.Text + ")";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
   
}

