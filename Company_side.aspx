<%@ Page Title="" Language="C#" MasterPageFile="~/Company.Master" AutoEventWireup="true" CodeBehind="Company_side.aspx.cs" Inherits="TechDynamos.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .body{
            font-family:'Epilogue'
        }
        .sub-container{
            width:800px;
        }
         .wider {
            width:500px;
            border-radius:7px;
            border-width:1px;
            border-color:lightgray;
            outline:0px;
            color:grey;
            padding-left:10px;  
        }
         .extended-height{
             margin-top:90px;  
             
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex flex-column align-items-center extended-height">
        <div class="sub-container bg-light mt-5  shadow">
            <div class="header-title pt-5 ps-5 pe-5 pb-4 border-bottom border-5 shadow-sm">
                <h1 class="d-inline">Company Details</h1>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/pen_icon.png" OnClick="ImageButton1_Click" Height="30" CssClass="float-end"/>
            </div>
            <div class="container mt-3 me-5 ms-5">
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label1" runat="server" Text="Label" >Company Name: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CompanyName" runat="server"  CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label2" runat="server" Text="Label">Company Email: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CompanyEmail" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label3" runat="server" Text="Label">Company Contact: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CompanyContact" runat="server" CssClass="wider" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label4" runat="server" Text="Label">Company Address: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="CompanyAddr" runat="server" CssClass="wider" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label5" runat="server" Text="Label">About Us: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="AboutUs" runat="server" CssClass="wider" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                 <div class="row">
                    <div class="col d-flex flex-column align-items-center">
                        <asp:Button ID="Save" runat="server" Text="Save Details" CssClass="btn btn-outline-secondary mt-4 mb-5"/>
                    </div>
                   
                </div>
            </div>

        </div>
    </div>

    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

</asp:Content>
