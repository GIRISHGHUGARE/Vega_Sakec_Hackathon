<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentSide.aspx.cs" Inherits="TechDynamos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .search-container{
            background-color:lightgrey;
            
        }
        .invis_search{
            background-color:rgba(0,0,0,0);
            border-width:0px;
            width:90px;
            font-size:12px;
            outline:0;
        }
        .custom_dropdown{
            margin-left:20px;   
            padding-left:10px;
            background-color: rgba(0,0,0,0);
            border-radius:20px;
            outline:none;
        }

        .custom_dropdown2{  
            padding:10px;
            background-color: rgba(0,0,0,0);
            border-radius:20px;
            outline:none;    
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-container mt-5">
        <div class="container">
            <div class="row">
               
                <div class="col-4 bg-dark bg-opacity-10 rounded-5 p-5 me-5  ">
                  
                       <h4 class="mb-3">Filter Your Search</h4>
                        <%--Search row--%>
                       <div class=" d-flex flex-row">
                            <div class="search-container rounded-pill p-2"> 
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="invis_search"></asp:TextBox>
                                    <i class='fas fa-edit' style='font-size:24px'></i>

                            </div>
                           <asp:DropDownList ID="Search_key" runat="server" CssClass="custom_dropdown">
                               <asp:ListItem>Domain</asp:ListItem>
                               <asp:ListItem>Company Name</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <h5 class="pt-4 fw-bold">Duration:</h5>
                        <asp:DropDownList ID="Duration" runat="server" CssClass="custom_dropdown2">
                            <asp:ListItem>1 Weeks</asp:ListItem>
                            <asp:ListItem>2 Weeks</asp:ListItem>
                            <asp:ListItem>1 Months</asp:ListItem>
                            <asp:ListItem>2 Months</asp:ListItem>
                            <asp:ListItem>3 Months</asp:ListItem>
                            <asp:ListItem>6 Months</asp:ListItem>
                       </asp:DropDownList>
                        <h5 class="pt-4 fw-bold">Mode: </h5>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="0" CellSpacing="10">
                            <asp:ListItem>Full Time</asp:ListItem>
                            <asp:ListItem>Part Time</asp:ListItem>
                            <asp:ListItem>Work from home</asp:ListItem>
                       </asp:CheckBoxList>
                    <asp:Button ID="ApplyFilters" runat="server" Text="Apply Filter" CssClass="btn btn-outline-secondary mt-4"/>
                </div>
                <div class=" col bg-dark bg-opacity-10 rounded-5 p-4">
                    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
                </div>

                
            </div>
        </div>
    </div>
</asp:Content>
