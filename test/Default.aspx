<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name: 
            <asp:TextBox ID="Textbox1" runat="server" ViewStateMode="Enabled"></asp:TextBox>


            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server" ErrorMessage="Only letters are Accpetd " ControlToValidate="Textbox1" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="#FF0066" Display="Dynamic">*</asp:RegularExpressionValidator>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="Name is required" ForeColor="#3333FF" Display="Dynamic">*</asp:RequiredFieldValidator>

            <br />
            <br />
            <br />

            Email:
            <asp:TextBox ID="EmailTxt" runat="server" ViewStateMode="Enabled"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter ur correct Email Adreess" ControlToValidate="EmailTxt" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required " ControlToValidate="EmailTxt" ForeColor="#6600FF" Display="Dynamic">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />


            Age :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your age " ForeColor="#FF0066" ControlToValidate="TextBox2" Display="Dynamic">*</asp:RequiredFieldValidator>

            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age sould be between 1 to 120 years " ControlToValidate="TextBox2" ForeColor="#3333CC" Display="Dynamic" MaximumValue="120" MinimumValue="1">*</asp:RangeValidator>
            <br />
            <br />
            <br />

            Password:
            <asp:TextBox ID="PwrdTxt" input type="password" runat="server"></asp:TextBox>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Is required" ForeColor="#FF0066" ControlToValidate="PwrdTxt">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PwrdTxt" ForeColor="#3333FF" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            Conform Password:
            <asp:TextBox ID="CnfrmTxt" input type="password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not matched " ControlToCompare="PwrdTxt" ControlToValidate="CnfrmTxt" ForeColor="#FF0066">*</asp:CompareValidator>
            <%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password must match" ControlToValidate="PwrdTxt" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>--%>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save" />
            <br />

            <asp:ValidationSummary ID="Validationsummary1" runat="server" DisplayMode="List" ForeColor="Red"></asp:ValidationSummary>
        </div>
    </form>
</body>
</html>
