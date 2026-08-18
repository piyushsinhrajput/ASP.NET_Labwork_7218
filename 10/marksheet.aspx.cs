using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace marksheet
{
    public partial class marksheet : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        int roll, sem, mo, s1, s2, s3, s4, s5, total;
        double per;

        string name = "", course = "", email = "", grade = "", result = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\AAYUSH_7237\SEM_5\ASP_NET\marksheet\marksheet\App_Data\Mark_Sheet_Data.mdf;Integrated Security=True");

            if (!IsPostBack)
            {
                TextBox12.Enabled = false;
                TextBox13.Enabled = false;
                TextBox14.Enabled = false;
                TextBox15.Enabled = false;

                Button2.Visible = false;
            }
        }

        private void ClearData()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";

            TextBox1.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            roll = Convert.ToInt32(TextBox1.Text);
            name = TextBox2.Text;
            course = TextBox3.Text;
            sem = Convert.ToInt32(TextBox4.Text);
            email = TextBox5.Text;
            mo = Convert.ToInt32(TextBox6.Text);

            s1 = Convert.ToInt32(TextBox7.Text);
            s2 = Convert.ToInt32(TextBox8.Text);
            s3 = Convert.ToInt32(TextBox9.Text);
            s4 = Convert.ToInt32(TextBox10.Text);
            s5 = Convert.ToInt32(TextBox11.Text);

            total = s1 + s2 + s3 + s4 + s5;
            per = total / 5.0;

            // Grade
            if (per >= 95)
                grade = "O";
            else if (per >= 90)
                grade = "A+";
            else if (per >= 85)
                grade = "A";
            else if (per >= 80)
                grade = "B+";
            else if (per >= 75)
                grade = "B";
            else if (per >= 60)
                grade = "C";
            else if (per >= 40)
                grade = "D";
            else
                grade = "E";

            // Result
            if (per >= 40)
                result = "Pass";
            else
                result = "Fail";

            TextBox12.Text = total.ToString();
            TextBox13.Text = per.ToString("0.00");
            TextBox14.Text = grade;
            TextBox15.Text = result;

            conn.Open();

            cmd = new SqlCommand("INSERT INTO Mark_Data VALUES(@roll,@name,@course,@sem,@email,@mobile,@s1,@s2,@s3,@s4,@s5,@total,@per,@grade,@result)", conn);

            cmd.Parameters.AddWithValue("@roll", roll);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@course", course);
            cmd.Parameters.AddWithValue("@sem", sem);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobile", mo);
            cmd.Parameters.AddWithValue("@s1", s1);
            cmd.Parameters.AddWithValue("@s2", s2);
            cmd.Parameters.AddWithValue("@s3", s3);
            cmd.Parameters.AddWithValue("@s4", s4);
            cmd.Parameters.AddWithValue("@s5", s5);
            cmd.Parameters.AddWithValue("@total", total);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", grade);
            cmd.Parameters.AddWithValue("@result", result);

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Write("<script>alert('Data Inserted Successfully.');</script>");

            ClearData();

            Button1.Visible = false;
            Button2.Visible = true;
            Button3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = true;

            ClearData();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClearData();
        }
    }
}
