using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void validate(object sender, EventArgs e)
    {
        string username = NameTB.Text;
        string password = PWTB.Text;

        using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["BarkeryCS"].ConnectionString))
        using (SqlCommand sqlCmd = new SqlCommand("Select role FROM USERS WHERE username = @username AND password = @password", sqlCon))
        {
            sqlCmd.Parameters.Add("username", SqlDbType.VarChar).Value = username;
            sqlCmd.Parameters.Add("password", SqlDbType.VarChar).Value = password;
            sqlCon.Open();
            sqlCmd.ExecuteNonQuery();
            using (SqlDataReader SqlRdr = sqlCmd.ExecuteReader())
            {
                if (SqlRdr.Read())
                {
                    string role = SqlRdr["role"].ToString();
                    if (role.Equals("admin"))
                    {
                        Response.Redirect("~/adminhome.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/userhome.aspx");
                    }
                }
                else
                {
                    Response.Redirect("~/loginerror.aspx");
                }
            }
        }
    }
}