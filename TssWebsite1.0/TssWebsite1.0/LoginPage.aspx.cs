using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TssWebsite1._0
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //check for the session variable with the currentuser is not null
                if (Session["CurrentUser"] != null)
                {
                    //for each control on your account modification page, populate it
                    //with the corresponding session variable control


                    //most new things with session[] might belong in account modification/creation 
                    //page because no first name in login and she couldn't use acct mod. because 
                    //she didn't have one

                    User currentuser = (User)Session["CurrentUser"];

                    //tboxLogin.Text = Session["CurrentUser"].firstname.ToString();
                    //ddlStates.SelectedValue = currentuser.StateID.ToString();
                }
            }


        }
        protected void logbtn_Click(object sender, EventArgs e)
        {
            //The is valid makes sure all validation has passed on the page
            if (IsValid)
            {
                //You must add 3 name spaces to use SQLserver from C#
                //System.Data, System.Data.SQLClient, System.Configuration

                //Create a reference to the connection string we previously stored in our web.config file
                string StrConn = ConfigurationManager.ConnectionStrings["F20_kstroolivConnectionString"].ToString();

                using (SqlConnection SqlConn = new SqlConnection(StrConn))
                {
                    SqlDataAdapter SqlDA = new SqlDataAdapter("spSelectUserByCredentials", SqlConn);
                    SqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;

                    //create password parameter
                    SqlParameter LoginUsername = new SqlParameter("@Username", tboxLogin.Text);
                    LoginUsername.Direction = ParameterDirection.Input;
                    LoginUsername.DbType = DbType.String;
                    SqlDA.SelectCommand.Parameters.Add(LoginUsername);

                    SqlParameter LoginPassword = new SqlParameter("@UserPassword", tboxLogin.Text);
                    LoginPassword.Direction = ParameterDirection.Input;
                    LoginPassword.DbType = DbType.String;
                    SqlDA.SelectCommand.Parameters.Add(LoginPassword);

                    //create a dataset to hold the results of our stored procedure execution
                    DataSet ds = new DataSet();

                    //To execute a sqlDataAdapter, you use the fill();
                    SqlDA.Fill(ds);

                    //now we check if there are any rows in our dataset. If there are, then it was
                    //successful. There should only be 1 row in this case because it is our login credentials
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Login was successful
                        //Create a copy of the user class so we can populate it
                        User currentuser = new User();

                        currentuser.UserID = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        Session["UserID"] = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        currentuser.FirstName = ds.Tables[0].Rows[0]["FirstName"].ToString();
                        currentuser.LastName = ds.Tables[0].Rows[0]["LastName"].ToString();
                        currentuser.Address1 = ds.Tables[0].Rows[0]["Address1"].ToString();
                        currentuser.Address2 = ds.Tables[0].Rows[0]["Address2"].ToString();
                        currentuser.City = ds.Tables[0].Rows[0]["City"].ToString();
                        currentuser.StateID = Convert.ToInt32(ds.Tables[0].Rows[0]["StateID"]);
                        currentuser.Zipcode = ds.Tables[0].Rows[0]["Zipcode"].ToString();
                        currentuser.PhoneNumber = ds.Tables[0].Rows[0]["PhoneNumber"].ToString();
                        currentuser.Username = ds.Tables[0].Rows[0]["Username"].ToString();
                        currentuser.UserPassword = ds.Tables[0].Rows[0]["UserPassword"].ToString();
                        currentuser.RecoveryEmail = ds.Tables[0].Rows[0]["RecoveryEmail"].ToString();
                        //currentuser.StateAbbr = ds.Tables[0].Rows[0]["StateAbbr"].ToString();


                        Session["CurrentUser"] = currentuser;
                        //redirect to shopping but unfinished and might be for multiview so might not apply at all and need to change and make names work here
                        //
                        if (Session["ShoppingStatus"] != null)
                        {
                            Response.Redirect("~/ShippingBillingPage.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/ProductPage.aspx");

                        }

                        //Redirect back to Homepage or somewhere else
                        Response.Redirect("~/HomePage.aspx");
                    }
                    else
                    {
                        lblSuccessMessage.Text = "Login information is incorrect, check your username and/or password!";

                    }
                }
            }
        }

        //protected void Createlkbtn_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/AccountCreation.aspx");
        //}


        //protected void logbtn_Click(object sender, EventArgs e)
        //{
        //    if (tboxLogin.Text == "troy@gmail.com")
        //    {
        //        if (tboxPasslog.Text == "123")
        //        {
        //            lblSuccessMessage.Text = "Success";
        //            lblemailID.Text = tboxLogin.Text;

        //        }
        //        else
        //        {
        //            lblSuccessMessage.Text = "try again";
        //        }
        //    }
        //    else
        //    {
        //        lblSuccessMessage.Text = "invalid username";
        //    }
        //Response.Redirect("~/AccountModification.aspx");
    }
}