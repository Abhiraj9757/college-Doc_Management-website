<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<script runat="server">

  
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
 


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div style="height: 403px;  padding-bottom:150px;">
<form action = "?" id="form">
  <div   style= "float:right; height: 28px; margin-right:200px;">
                    &nbsp;<asp:LinkButton  
                        class="btn"  ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        Font-Bold="True"  Height="20px">Admin Login</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn" onclick="LinkButton2_Click" 
                        Font-Bold="True"  Height="20px">User Login</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton class="btn" ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        Font-Bold="True"  Height="20px">User sign up</asp:LinkButton>
    </div>
    </br>
    </br>
    </br>
    </br>
    <div  style="float: left; margin-left:150px;  ">

        <asp:Image   ID="Image1" runat="server" Height="220px" 
            ImageUrl="images/clg logo.JPG" Width="199px" />
        </div>
        <div  style="float: left; height: 343px; width: 503px; margin-left: 23px; ">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC6600" 
                Text="HISTORY"></asp:Label>
                <div>
          <ul style="color: #003366; font-size:18px; word-spacing:2px; margin-top:20px;margin-right:20px;margin-left:20px;" >
            My College Educational Institution managed and controlled by more than 11 year College Society consisting of the  Mumbai, 
            College Society also governs my college which was founded in 2002 by Abhishek Rajpurohit,  missionary who was its first Principal.  My College is an Autonomous College since 2014 associated 
            with University of Mumbai offering Bachelor’s Degree Courses in Arts,Science and commerce discipline.
            The College also offers several diploma programmes like Post Graduate Diploma in Computer Aplications, Post Graduate Diploma in 
            Business Management, Diploma in Secretarial Practices, etc.
            </ul>
            </div>
</div>
</form>

</div>




</asp:Content>



