<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sturesume.aspx.cs" Inherits="sturesume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 75px; text-align: center; background-color: #9933FF; text-transform: uppercase; font-size: xx-large; color: #FFFFFF;">

        <br />
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" ForeColor="White" 
            Text="Student's CV"></asp:Label>

    </div>
   
    <div style="text-align: center">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="applicationid" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal" Height="271px" Width="1269px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="applicationid" HeaderText="Application ID" 
                    ReadOnly="True" SortExpression="applicationid">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="stuname" HeaderText="Student Name" 
                    SortExpression="stuname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="emailaddress" HeaderText="Email Address" 
                    SortExpression="emailaddress">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mobilenumber" HeaderText="Mobile Number" 
                    SortExpression="mobilenumber">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="resumefile" 
                    HeaderText="Resume [PDF]" Text="View and Download">
                <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                Height="40px" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:universityConnectionString %>" 
            SelectCommand="SELECT * FROM [CandidateDetail]"></asp:SqlDataSource>
    
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#9933FF" ForeColor="White" 
            Height="33px" onclick="Button1_Click" Text="Back" Width="62px" />
    
    </div>
    </form>
</body>
</html>
