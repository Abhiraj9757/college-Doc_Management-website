<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        <link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
    <div class="box" style="margin-bottom:50px">
    <center>
    <asp:Label ID="Label1" runat="server" Text="Please Enter Your Registered Email ID" ForeColor="MidnightBlue" Font-Size="Larger" font-family="arial,sans-serif"></asp:Label><br />
    <asp:TextBox ID="TextBox1" class="field" runat="server"  Width="230px" PlaceHolder="Enter Email id here" forecolor="black"></asp:TextBox>
        <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter EmailID" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />

    <asp:Button ID="Button1" class="btn" runat="server" Text="Send" Width="140px" 
            OnClick="Button1_Click1" BackColor="#9966FF" ForeColor="White"  /><br />
    </center>
        </div>
</asp:Content>

