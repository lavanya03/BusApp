<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusApp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <div class="introbox">
        <h1>
            Member Login</h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
        .errormessage1
        {
            color: red;
            margin-left: 160px;
            margin-top: -19px;
            position: absolute;
            font: bold 12px Arial,sans-serif;
        }
</style>
<script type="text/javascript">

</script>
  
    <table>
        <tr>

            <td class="main">
                <div>
                    <img width="701" height="131" src="../Images/banner1.jpg"><div id="home_title">
                    </div>
                    &nbsp;</div>
                <div class="main_content">
                    <table width="60%" cellspacing="0" cellpadding="7" border="0" align="center">
                        <tbody>
                            <tr>
                                <td colspan="2" align="left">
                                    <asp:Label ID="lblMsg" runat="server" ForeColor="#005FAB"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="25%">
                                    <strong>Email: </strong>
                                </td>
                                <td width="78%">
                                    &nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RqvtxtEmail" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="*" CssClass="errormessage"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegExValidator" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Email is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        CssClass="errormessage"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Password:</strong>
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="txtPassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RqvtxtPass" runat="server" ControlToValidate="txtPassword"
                                        ErrorMessage="*" CssClass="errormessage"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            
                           
                            <tr>
                                <td>
                                </td>
                                <td>
                                    &nbsp;<asp:Button ID="btnLogin" runat="server" Text="Login" class="button1" OnClick="btnLogin_Click" />
                                </td>
                            </tr>
                           
                        </tbody>
                    </table>
                  
                    <br>
                    <br>

                     
                  
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
