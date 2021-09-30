using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_ASP_SP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getProductList();
            }
        }
        //connection string
        SqlConnection con = new SqlConnection("Data Source=devsql-2;Initial Catalog=My_Test_DB;Integrated Security=True");
        
        //function for add a product to the database
        protected void addProductHandler(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text;
            string specification = TextBox3.Text;
            string unit = DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue;
            DateTime dateTime = DateTime.Parse(TextBox4.Text);

            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSerup_SP '" + productId + "', '" + itemName + "', '" + specification + "', '" + unit + "', '" + status + "', '" + dateTime + "' ", con);

            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted.');", true);
            getProductList();
        }


        //function for get all the products in a table.
        void getProductList()
        {
            SqlCommand co = new SqlCommand("exec ProductList_SP", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        //function for update a existing product
        protected void updateProductHandler(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text;
            string specification = TextBox3.Text;
            string unit = DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue;
            DateTime dateTime = DateTime.Parse(TextBox4.Text);

            con.Open();
            SqlCommand co = new SqlCommand("exec ProductUpdate_SP '" + productId + "', '" + itemName + "', '" + specification + "', '" + unit + "', '" + status + "', '" + dateTime + "' ", con);

            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
            getProductList();
        }


        //function for delete a product using product id
        protected void deleteProductHandler(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);

            con.Open();
            SqlCommand co = new SqlCommand("exec ProductDelete_SP '" + productId + "' ", con);

            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
            getProductList();
        }

        //search all the relevant product using the product id
        protected void searchButtonHandler(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);

            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSearch_SP '" + productId + "' ", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //load all the product
        protected void loadAllData(object sender, EventArgs e)
        {
            getProductList();
        }
    }
}