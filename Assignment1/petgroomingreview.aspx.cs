using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Assignment1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    review_summary.InnerHtml = "";

                    string Pet_Stylist = pet_stylist.Text;
                    string Client_Name = client_name.Text;
                    string Client_Email = client_email.Text;
                    string Pet_Type = pet_type.Text;
                    string Pet_Gender = pet_gender.Text;
                    string Pet_Treatment = pet_treatment.Text;
                    int Client_Rating = Convert.ToInt32(client_rating.Text);

                    Client Client_Info = new Client();
                    Client_Info.Client_Name = Client_Name;
                    Client_Info.Client_Email = Client_Email;
                    Client_Info.Client_Rating = Client_Rating;

                    Pet Pet_Info = new Pet();
                    Pet_Info.Pet_Stylist = Pet_Stylist;
                    Pet_Info.Pet_Type = Pet_Type;
                    Pet_Info.Pet_Gender = Pet_Gender;
                    Pet_Info.Pet_Treatment = Pet_Treatment;


                    Review Review_Results = new Review();
                    Review_Results.Client_Info = Client_Info;
                    Review_Results.Pet_Info = Pet_Info;

                    review_summary.InnerHtml = Review_Results.PrintSummary();
                }
            }
        }

        protected void Client_Rating_Validation(object sender, ServerValidateEventArgs e)
        {
            bool RatingIsInteger = Int32.TryParse(client_rating.Text, out int Client_Rating);

            if (!RatingIsInteger)
            {
                e.IsValid = false;
            }
            else if (Client_Rating < 1 || Client_Rating > 5)
            {
                e.IsValid = false;
            }
            else
            {
                e.IsValid = true;
            }
        }

        protected void Client_Email_Validation(object sender, ServerValidateEventArgs e)
        {
            //Code reference link: https://stackoverflow.com/questions/5342375/regex-email-validation Author: Avinash Last edited on: April 8/14 
            //I am using this code for the regular expression validator portion of the assignment to validate email addresses.
            string email = client_email.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
                e.IsValid = true;
            else
                e.IsValid = false;
        }
    }
}