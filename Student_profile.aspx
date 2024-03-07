<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Student_profile.aspx.cs" Inherits="TechDynamo.Student_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .main-container{
            margin-top:150px;  
            margin-left:200px;
            margin-right:200px;
           
        }
        .fixed-height{
            height:500px
        }
        input{
            outline:0;
        }
        ::-webkit-scrollbar {
            display: none;
        }
        .slight-light{
            background-color:rgba(238, 115, 143, 0.6);
        }
        .extended-height{
             margin-top:90px;  
             
         }
    </style>

    <div class="container d-flex flex-column align-items-center extended-height">
        <div class="sub-container bg-light mt-5  shadow">
            <div class="header-title pt-5 ps-5 pe-5 pb-4 border-bottom border-5 shadow-sm">
                <h1 class="d-inline">Student Details</h1>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/pen_icon.png" Height="30" CssClass="float-end" OnClick="ImageButton1_Click" />
            </div>
            <div class="container mt-3 me-5 ms-5">
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label1" runat="server" Text="Label">Student Name: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="StudName" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label2" runat="server" Text="Label">Student ID: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="StudID" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label3" runat="server" Text="Label">Course Name: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CourseName" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label4" runat="server" Text="Label">Course Year: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CourseYear" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label5" runat="server" Text="Label">City: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="City" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label6" runat="server" Text="Label">Email: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="Email" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label7" runat="server" Text="Label">Contact: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="Contact" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col d-flex flex-column align-items-center">
                        <asp:Button ID="Save" runat="server" Text="Save Details" CssClass="btn btn-outline-secondary mt-4 mb-5" OnClick="Save_Click" />
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
