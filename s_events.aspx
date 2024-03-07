<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="s_events.aspx.cs" Inherits="TechDynamo.s_events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        .main-container{
            margin-top:150px;
        }
    </style>

    <div class="main-container ">
        <div class="container">
            <div class="row">

                <div class="col-4 bg-dark bg-opacity-10 rounded-5 p-5   ">

                    <h4 class="mb-3">Filter Your Search</h4>
                    <%--Search row--%>
                    <div class=" d-flex flex-row">
                        <div class="search-container rounded-pill p-2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="invis_search"></asp:TextBox>
                            <i class='fas fa-edit' style='font-size: 24px'></i>

                        </div>
                        <asp:DropDownList ID="Search_key" runat="server" CssClass="custom_dropdown">
                            <asp:ListItem>Domain</asp:ListItem>
                            <asp:ListItem>Company Name</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <h5 class="pt-4 fw-bold">Duration:</h5>
                    <asp:DropDownList ID="Duration" runat="server" CssClass="custom_dropdown2">
                        
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
                    <asp:Button ID="ApplyFilters" runat="server" Text="Apply Filter" CssClass="btn btn-outline-secondary mt-4" />
                </div>
                <div class="col-8">
                <asp:DataList ID="DataList1" runat="server">
                    <itemtemplate>
                        <div class="col bg-dark bg-opacity-10 rounded-5 p-4 mb-3" style="height: 200px;width:800px">

                            <asp:Label ID="PlacementTitle" runat="server" Text='<%# Eval("title") %>' CssClass="h1 mb-4"></asp:Label>
                            <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("company_name") %>' CssClass="h4 d-block mb-3 text-opacity-50 text-black"></asp:Label>

                            <div class="container">
                                <div class="row">
                                    <div class="col-3">
                                        <asp:Label ID="Salary" runat="server" Text='<%# "Rs."+ Eval("salary") %>'></asp:Label>
                                    </div>
                                    <div class="col-3">
                                        <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("duration") %>'></asp:Label>
                                    </div>
                                    <div class="col-3">
                                        <asp:Label ID="Openings" runat="server" Text='<%# Eval("openings")+" Opening/s" %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="container d-flex flex-column align-items-end mt-4">
                                 <a href="placement_detail.aspx?id=<%#Eval("id")%>">View Details</a>
                                
                            </div>
                        </div>
                    </itemtemplate>
                </asp:DataList>
                    </div>


            </div>
        </div>
    </div>
</asp:Content>
