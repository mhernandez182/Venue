using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Venue
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var test = Request.IsAuthenticated;

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string perf = txtPerf.Text;
            string genre = txtGenre.Text;
            string date = txtDate.Text;
            string time = txtTime.Text;
            lblError.Visible = false;

            var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShowDatabase"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);

            string sql = "insert into shows (performer, genre, dates, times) values (@perf, @genre, @date, @time);";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.Add("@perf", SqlDbType.VarChar);
                cmd.Parameters["@perf"].Value = perf;
                cmd.Parameters.Add("@genre", SqlDbType.VarChar);
                cmd.Parameters["@genre"].Value = genre;
                cmd.Parameters.Add("@date", SqlDbType.VarChar);
                cmd.Parameters["@date"].Value = date;
                cmd.Parameters.Add("@time", SqlDbType.VarChar);
                cmd.Parameters["@time"].Value = time;

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                lblError.Visible = true;
                lblError.Text = msg;
            }
            finally
            {
                conn.Close();
            }
            GridView1.DataBind();
        }
    }
}