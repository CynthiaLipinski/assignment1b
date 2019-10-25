<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="petgroomingreview.aspx.cs" Inherits="Assignment1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Pet Grooming Review</title>
</head>

<body>
    <form id="form1" runat="server">
            <h1>Pet Grooming Review</h1>
            <div>
                <section>
                    <label for="pet_stylist">Which grooming stylist are you reviewing?</label>
                    <asp:DropDownList runat="server" ID="pet_stylist">
                        <asp:ListItem Text="Bobby Joe" Value="Bobby Joe"></asp:ListItem>
                        <asp:ListItem Text="Linda Scott" Value="Linda Scott"></asp:ListItem>
                        <asp:ListItem Text="Luke Skywalker" Value="Luke Skywalker"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="pet_stylist" ErrorMessage="Please select a stylist."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <label for="client_name">What is your name?</label>
                    <asp:TextBox runat="server" ID="client_name"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="client_name" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <label for="client_email">What is your email?</label>
                    <asp:TextBox runat="server" ID="client_email"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="client_email" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
                     <asp:CustomValidator runat="server" ControlToValidate="client_email" OnServerValidate="Client_Email_Validation" ErrorMessage="Please enter a valid email."></asp:CustomValidator>
                </section>
                <section>
                    <label for="pet_type">What type of pet did you bring in?</label>
                    <div>
                        <asp:RadioButtonList runat="server" ID="pet_type">
                            <asp:ListItem Text="Dog" Value="dog"></asp:ListItem>
                            <asp:ListItem Text="Cat" Value="cat"></asp:ListItem>
                            <asp:ListItem Text="Rabbit" Value="rabbit"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="pet_type" ErrorMessage="Please enter your pet type."></asp:RequiredFieldValidator>
                    </div>
                </section>
                <section>
                    <label for="pet_gender">What is the gender of your pet?</label>
                    <asp:DropDownList runat="server" ID="pet_gender">
                        <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="pet_gender" ErrorMessage="Please enter the gender of your pet."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <label for="pet_treatment">What type of treatment was your pet getting?</label>
                    <asp:RadioButtonList runat="server" ID="pet_treatment">
                            <asp:ListItem Text="Haircut" Value="haircut"></asp:ListItem>
                            <asp:ListItem Text="Nail trim" Value="nailtrim"></asp:ListItem>
                            <asp:ListItem Text="Ear Clean" Value="earclean"></asp:ListItem>
                    </asp:RadioButtonList>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="pet_treatment" ErrorMessage="Please enter the type of treatment."></asp:RequiredFieldValidator>
                </section>
                <section>
                    <label for="client_rating">Out of five stars how would you rate your experience?</label>
                    <div>
                        <asp:TextBox runat="server" ID="client_rating"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="client_rating" ErrorMessage="Please enter a number out of 5."></asp:RequiredFieldValidator>
                        <asp:CustomValidator runat="server" ControlToValidate="client_rating" OnServerValidate="Client_Rating_Validation" ErrorMessage="Please enter a number out of 5."></asp:CustomValidator>
                    </div>
                </section>
                <section>
                    <div runat="server" id="review_summary"></div>
                    <asp:Button runat="server" Text="Submit" />
                </section>
            </div>
    </form>
</body>

</html>
