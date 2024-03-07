<%@ Page Title="" Language="C#" MasterPageFile="~/MainHomePage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TechDynamo.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container pt-5 pb-5">
        <div class="row">
            <div class="col">
                <div class="container">
                    <div class="row">
                        <h2>Success doesn't come</h2>
                        <h2>to you, you go it.</h2>
                        <p>The team works closely with students to understand their career goals and interests, and then helps them find job opportunities that align with those goals. They also maintain relationships with a wide network of employers, which helps to ensure that students have access to a diverse range of job opportunities.</p>
                            
                    </div>
                    <div class="row pt-2">
                        <h4>Why TalentTrove ?</h4>
                    </div>
                    <div class="row pt-2">
                        <asp:Button ID="Button2" runat="server" Text="Get Started"  style="border-radius:10px;" Height="50" Width="150" class="bg-danger-subtle" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="container" >
                    <img src="Images/woman.jpg" style="height:400px" />
                </div>
            </div>
        </div>
    </div>
    <div class="container pt-5 pb-5">
        <div class="row row-flex">
            <div class="col-sm-4 row-flex-center">
                <h4>EMPLOYERS</h4>
            </div>
            <div class="col-sm-8 text-left">
                <h2>End-to-end virtual campus hiring</h2>
                <p>Complete automation, right from - outreach to 24,000 campuses, engagement, assessments, virtual interviews to industry benchmarking and analytics.</p>
                <asp:Button ID="Button1" runat="server" Text="For Employers" ForeColor="White" class="bg-danger" style="border-radius:10px;" Height="50" OnClick="Button1_Click"/>
            </div>
        </div>
        <div class="row row-flex pt-5">
            <div class="col-sm-4 row-flex-center">
                <h4>STUDENTS</h4>
            </div>
            <div class="col-sm-8 text-left">
                <h2>Learn, prepare & apply to jobs</h2>
                <p>Discover new opportunities, learn and practice on the go, prepare better for interviews</p>
                <asp:Button ID="Button3" runat="server" Text="For Students" ForeColor="White" class="bg-danger" style="border-radius:10px;" Height="50" OnClick="Button3_Click" />
            </div>
        </div>
    </div>
</asp:Content>
