<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addresume.aspx.cs" Inherits="Addresume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 48%;
            height: 470px;
        }
        .style3
        {
            width: 305px;
        }
        .style4
        {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="text-align: center; background-color: #CC66FF; height: 62px;">
        <asp:Label ID="Label3" runat="server" Text="CV'S Submission page" 
            BackColor="#CC66FF" Font-Size="XX-Large" ForeColor="White"></asp:Label>
    </div>
        <table class="style1" align="center" 
            style="background-color: #FFFFCC; font-size: large">
            <tr>
                <td class="style4">
                    Your Name</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Address</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Email Address</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Mobile Number</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Course</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="171px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Upload Resume (PDF Format Only)</td>
                <td class="style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="249px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Height="32px" Width="87px" BackColor="White" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <div style="text-align: center">
            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" 
                Height="34px" onclick="Button2_Click" Text="Back" Width="66px" />
        </div>
        <br />
    
    </div>
    </form>
</body>
</html>
