<%@ Page Title="" Language="C#" MasterPageFile="~/Company.Master" AutoEventWireup="true" CodeBehind="company_add_placement.aspx.cs" Inherits="TechDynamo.company_add_placement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Epilogue' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .body{
            font-family:'Epilogue'
        }
        .sub-container{
            width:800px;
        }
         .wider {
            width:400px;  
            border-width:1px;
            border-color:lightgray;
            outline:0px;
            padding-left:10px;  
        }
         .extended-height{
             margin-top:90px;  
             
         }
         .adjust_left{
             margin-left:30px;
         }
         .light-border{
            border-radius:7px;
            border-width:1px;
            border-color:lightgray;
            outline:0px;
            padding-left:10px;
         }
    </style>

    <div class="container d-flex flex-column align-items-center extended-height">
        <div class="sub-container bg-dark-subtle mt-5  shadow">
            <div class="header-title pt-5 ps-5 pe-5 pb-4 border-bottom border-5 shadow-sm">
                <h1 class="d-inline">Issue Placements</h1>
            </div>
            <div class="container mt-3 me-4 ms-4">
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label1" runat="server" Text="Label">Title: </asp:Label>
                    </div>
                    <div class="col-6">
                        <asp:TextBox ID="PlaceTitle" runat="server" CssClass="wider"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-2">
                        <asp:Label ID="Label2" runat="server" Text="Label">Start on: </asp:Label>
                    </div>
                    <div class="col-2">
                        <asp:TextBox ID="StartDate" runat="server" TextMode="Date" CssClass="light-border"></asp:TextBox>
                    </div>


                    <div class="col-2 ms-5">
                        <asp:Label ID="Label3" runat="server" Text="Label">Applicable till:</asp:Label>
                    </div>
                    <div class="col-2">
                        <asp:TextBox ID="EndDate" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label4" runat="server" Text="Label">No. of openings: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="Openings" runat="server" CssClass="adjust-left light-border"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label5" runat="server" Text="Label">About the Placement: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="AboutUs" runat="server" CssClass="wider" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label6" runat="server" Text="Label">Key Resposibilities: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="KeyRespos" runat="server" CssClass="wider" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label7" runat="server" Text="Label">Salary: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="Salary" runat="server" CssClass="light-border"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label8" runat="server" Text="Label">Requirements: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="Reqs" runat="server" CssClass="light-border"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label ID="Label9" runat="server" Text="Label">Duration: </asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:DropDownList ID="Duration" runat="server" CssClass="light-border">
                            
                            <asp:ListItem>1 Months</asp:ListItem>
                            <asp:ListItem>2 Months</asp:ListItem>
                            <asp:ListItem>3 Months</asp:ListItem>
                            <asp:ListItem>6 Months</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col d-flex flex-column align-items-center">
                        <asp:Button ID="Save" runat="server" Text="Issue" CssClass="btn btn-outline-secondary mt-4 mb-5" OnClick="Save_Click" />
                    </div>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </div>
            </div>

        </div>
    </div>
    <div class="row">


    </div>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</asp:Content>
