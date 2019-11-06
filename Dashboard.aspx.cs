using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DaySales();
        SalesToday();
        LowInventory();
    }

    private void DaySales()
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "EXEC dbo.DashboardPrice";
        SqlDataReader rdr = cmd.ExecuteReader();

        while (rdr.Read())
        {
            string prodPrice = Math.Round(rdr.GetDecimal(0), 2).ToString();
            totalsales.Text = prodPrice;
        }
        rdr.Close();
        con.Close();
    }

    private void SalesToday()
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "EXEC dbo.DaySalePrice";
        SqlDataReader rdr = cmd.ExecuteReader();

        while (rdr.Read())
        {
            string dayprodPrice = Math.Round(rdr.GetDecimal(0), 2).ToString();
            if (dayprodPrice == null)
            {
                dayprodPrice = "0";
            }
            
            daysales.Text = dayprodPrice;
        }
        rdr.Close();
        con.Close();
    }

     void LowInventory()
    {
        if (!this.IsPostBack)
        {
            //Populating a DataTable from database.
            DataTable dt = this.GetData();

            //Building an HTML string.
            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table class=\"table\">");

            /*
            //Building the Header row.
            html.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<th>");
                html.Append(column.ColumnName);
                html.Append("</th>");
            }
            html.Append("</tr>");
            */


            //Building the Data rows.
            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }
                html.Append("</tr>");
            }

            //Table end.
            html.Append("</table>");

            //Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
        }
    }



    private DataTable GetData()
    {

        using (SqlConnection con = new SqlConnection(Util.GetCon()))
        {
            using (SqlCommand cmd = new SqlCommand("EXEC dbo.lowinventory"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

    }
}