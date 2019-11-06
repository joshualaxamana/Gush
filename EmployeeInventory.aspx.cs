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

public partial class EmployeeInventory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            tableBuilder();
        }
    }
    void tableBuilder()
    {
        //Populating a DataTable from database.
        DataTable dt = this.GetData();

        //Building an HTML string.
        StringBuilder html = new StringBuilder();

        //Table start.
        html.Append("<table class='table' border = '1'>");

        //Building the Header row.
        html.Append("<tr>");
        foreach (DataColumn column in dt.Columns)
        {
            html.Append("<th>");
            html.Append(column.ColumnName);
            html.Append("</th>");
        }
        html.Append("</tr>");

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

    public DataTable GetData()
    {

        using (SqlConnection con = new SqlConnection(Util.GetCon()))
        {
            using (SqlCommand cmd = new SqlCommand("select productName as 'Product', productStockQty as 'Qty' from inventories"))
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

    protected void updateProduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "exec updateInventories @product ='" + productName.Text + "', @price ='" + productPrice.Text + "', @qty ='" + productQty.Text + "';";
        cmd.ExecuteNonQuery();
        con.Close();
        productName.Text = String.Empty;
        productPrice.Text = String.Empty;
        productQty.Text = String.Empty;
        status.Text = "Update successful. Reload Inventory.";
    }


    protected void insertProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpAddInventory.aspx");
    }
    protected void clearText_Click(object sender, EventArgs e)
    {
        productName.Text = String.Empty;
        productPrice.Text = String.Empty;
        productQty.Text = String.Empty;
        status.Text = String.Empty;


    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select productName, productStockQty, productPrice from inventories where productName like '%" + search.Text + "%'";
        SqlDataReader rdr = cmd.ExecuteReader();

        while (rdr.Read())
        {
            string prodName = rdr.GetString(0);
            string prodPrice = Math.Round(rdr.GetDecimal(2), 2).ToString();
            string prodQty = rdr.GetInt32(1).ToString();
            productName.Text = prodName;
            productPrice.Text = prodPrice;
            productQty.Text = prodQty;
        }
        rdr.Close();
        con.Close();

    }

    protected void reloadInv_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            tableBuilder();
        }
        status.Text = String.Empty;
    }

    protected void Deliveries_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpDeliveries.aspx");
    }
}