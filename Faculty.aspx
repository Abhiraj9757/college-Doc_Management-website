<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="administrater_Faculty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 241px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="text-align: center; font-size: xx-large; text-transform: uppercase; background-color: #0066FF; color: #FFFFFF; height: 96px;">
            &nbsp;<br />
            Introduction to faculty</div>
        <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataKeyField="teacherid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="White" ForeColor="#003399" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td style="text-align: center">
                                Faculty ID :
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("teacherid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                Faculty Name :
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("teachername") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image1" runat="server" Height="300px" 
                                    ImageUrl='<%# Eval("teacherimage") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                Teaching Experience :&nbsp;
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("teachingexp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                Faculty Qulification :
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("teacheredu") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                &nbsp; Branch :
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Branch") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                Email :
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:universityConnectionString %>" 
                SelectCommand="SELECT * FROM [faculty]"></asp:SqlDataSource>
            <br />
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" BackColor="#CC66FF" ForeColor="White" 
                    Height="35px" onclick="Button1_Click" Text="Back" Width="54px" />
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
