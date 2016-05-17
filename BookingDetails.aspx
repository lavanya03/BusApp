<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="BusApp.BookingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="introbox">
        <h1>
            Booking Details</h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%">      
        <tr>
            <td style="font-size: medium; width: 293px;" class="title1" width="20%">
                &nbsp;</td>
            <td width="79%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  >
                <asp:GridView ID="gvBusDetails" runat="server" AutoGenerateColumns="False" Width="100%"
                    DataKeyNames="BusID" 
                    CellPadding="4"  CssClass="gvText" ForeColor="#333333" GridLines="None" 
                    PageSize="10" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>                    
                     <asp:BoundField DataField="BusID" HeaderText="BusID"  
                            Visible="false"  >
                            <HeaderStyle CssClass="gvHeader" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BusName" 
                            HeaderText="Bus Name" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BusNumber" HeaderText="Bus Number" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Seats" HeaderText="Seats" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Category" HeaderText="Category" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Source" HeaderText="Source" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="ArrivalTime" HeaderText="Arrival Time" >
                            <HeaderStyle CssClass="gvHeader" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>                        

                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle CssClass="gvHeader"   Font-Bold="True" 
                        ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Left" />
                    <PagerStyle CssClass="gvHeader"  ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 293px">
              Name
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 293px">
              Phone Number
            </td>
            <td>   
             &nbsp;            
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 293px">
             No. Of Seat
            </td>
            <td>   
             &nbsp;            
                <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 293px">
              
            </td>
            <td>  
             &nbsp;             
                <asp:Button ID="btnSave" runat="server" Text="Book" onclick="btnSave_Click" />
            </td>
        </tr>
      
    </table>
</asp:Content>
