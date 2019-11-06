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

public partial class EmpAddInventory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clearText_Click(object sender, EventArgs e)
    {
        productName.Text = String.Empty;
        productPrice.Text = String.Empty;
        productQty.Text = String.Empty;
        productPrice.Text = String.Empty;
        productCost.Text = String.Empty;
        productQtyReq.Text = String.Empty;
        status.Text = String.Empty;
    }

    protected void addProduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = @"insert into inventories (productID, productName, productStockQty, productStockReq, productPrice, productCost, lastUpdate, userID)
                            values ((SELECT ISNULL(MAX(productID)+1,0) FROM dbo.inventories WITH(SERIALIZABLE, UPDLOCK)),'" + productName.Text + "','" + productQty.Text + "','" + productQtyReq.Text + "','" + productPrice.Text + "','" + productCost.Text + "',GETDATE(),'1')";
        cmd.ExecuteNonQuery();
        con.Close();
        status.Text = "New product added. Click back if you're done.";
        productName.Text = String.Empty;
        productPrice.Text = String.Empty;
        productQty.Text = String.Empty;
        productPrice.Text = String.Empty;
        productCost.Text = String.Empty;
        productQtyReq.Text = String.Empty;

    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeInventory.aspx");
    }
}