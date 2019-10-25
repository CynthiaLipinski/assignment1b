using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment1
{
    public class Review
    {
        public Pet Pet_Info { get; set; }
        public Client Client_Info { get; set; }

        public string PrintSummary()
        {
            string message = "Thank you for submitting a review! Please confirm your details below.<br>";
            message += "Your name is " + Client_Info.Client_Name + " and your email is " + Client_Info.Client_Email + ".<br>";
            message += "Your pet is a " + Pet_Info.Pet_Gender + " " +  Pet_Info.Pet_Type + ".<br>";
            message += "They recieved a " + Pet_Info.Pet_Treatment + " by " + Pet_Info.Pet_Stylist + ".<br>";
            message += "Your rating is " + Client_Info.Client_Rating + " out of 5 stars.";

            return message;
                
        }
    }
}