using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace user_uti
{
    public partial class user_create : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        string fsn = "", lsn = "", gender = "", email = "", ps = "";
        int age;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\7237\\user_uti\\App_Data\\Sdt_Data.mdf;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fsn = TextBox1.Text;
            lsn = TextBox2.Text;
            age = Convert.ToInt32(TextBox3.Text);
            gender = RadioButtonList1.SelectedValue;
            email = TextBox4.Text;
            ps = TextBox5.Text;
            conn.Open();
            cmd = new SqlCommand(" insert into Data values('" + fsn + "' , '" + lsn + "' , " + age + " , '" + gender + "' , '" + email + "' , '" + ps + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Write("Data Inserted Done..!!");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            RadioButtonList1.ClearSelection();
            TextBox1.Focus();
        }
    }
}
