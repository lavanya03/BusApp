<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BusApp.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="introbox">
        <h1>
            User Registration</h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%">
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tableText" height="30" width="20%">
                User Name *
            </td>
            <td width="50%">
                <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    CssClass="errormessage" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td width="25%">
                &nbsp;
            </td>
        </tr>
        
        
        <%--   <tr>
            <td class="tableText" height="30">
                User Name *</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Width="200px" 
                    ontextchanged="txtUserName_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                    ControlToValidate="txtUserName" CssClass="errormessage" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>--%>
        <tr>
            <td class="tableText" height="30">
                EmailID *
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    CssClass="errormessage" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regExpValEmail" runat="server" ControlToValidate="txtEmail"
                    CssClass="errormessage" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tableText" height="30">
                Password *
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    CssClass="errormessage" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tableText" height="30">
                Re-Enter Password *
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtReEnterPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvReenterPwd" runat="server" ControlToValidate="txtReEnterPwd"
                    CssClass="errormessage" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cpvPassword" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtReEnterPwd" CssClass="errormessage" ErrorMessage="Password not match"></asp:CompareValidator>
            </td>
        </tr>
       
        <tr>
            <td class="tableText">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="lblMessage" runat="server" CssClass="errormessage" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tableText">
                &nbsp;
            </td>
            <td>
                <asp:ImageButton ID="imgbtnSave" runat="server" OnClick="imgbtnSave_Click" ImageUrl="~/Images/save_button.png" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
