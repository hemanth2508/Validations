<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

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


            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server" ErrorMessage="*" ControlToValidate="Textbox1" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="#FF0066" Display="Dynamic"></asp:RegularExpressionValidator>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="*" ForeColor="#3333FF" Display="Dynamic"></asp:RequiredFieldValidator>

            <br />
            <br />
            <br />

            Email:
            <asp:TextBox ID="EmailTxt" runat="server" ViewStateMode="Enabled"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="EmailTxt" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="EmailTxt" ForeColor="#6600FF" Display="Dynamic"></asp:RequiredFieldValidator>
<br />
            <br />
            <br />
            

            Age :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="#3333CC"></asp:RangeValidator>
            <br />
            <br />
            <br />

            Password: <asp:TextBox ID="PwrdTxt" input type="password" runat="server"></asp:TextBox>
            
            
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="#FF0066" ControlToValidate="PwrdTxt"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="PwrdTxt" ForeColor="#3333FF" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
                        <br />
            <br />
            <br />
            Conform Password: <asp:TextBox ID="CnfrmTxt" input type="password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ControlToCompare="PwrdTxt" ControlToValidate="CnfrmTxt" ForeColor="#FF0066"></asp:CompareValidator>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password must match" ControlToValidate="PwrdTxt" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>--%>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save" />
            <br />
            <br />
        <br />
            <br />
            <br />
            <asp:validationsummary ID="Validationsummary1" runat="server" DisplayMode="List" ForeColor="Red"></asp:validationsummary>
        </div>
    </form>
    

</body>

</html>
