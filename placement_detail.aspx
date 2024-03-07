<%@ Page Title="" Language="C#" MasterPageFile="~/Company.Master" AutoEventWireup="true" CodeBehind="placement_detail.aspx.cs" Inherits="TechDynamo.placement_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container{
            margin-top:150px;
        }
    </style>
     <asp:DataList ID="DataList1" runat="server">
     <itemtemplate>
    <div class="pt-5 pb-5 container  border ">
            <%--placement name--%>
            <div class="row h2 fw-bold" >
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            </div>
           
            <div class="row">
                <%--Start date--%>
                <div class="col">
                    <asp:Label ID="Label13" runat="server" Text="Start Form"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("start_on") %>'></asp:Label>
                </div>
                <%--Salary--%>
                <div class="col">
                     <asp:Label ID="Label12" runat="server" Text="Salary"></asp:Label><br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Salary") %>'></asp:Label>
                </div>
               
                <%--Apply by--%>
                <div class="col">
                    <asp:Label ID="Label5" runat="server" Text="Apply by"></asp:Label><br />
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("applicable_till") %>'></asp:Label>
                </div>

                <hr />
            </div>
       
            <%--About the job--%>
            <div class="row">
                    <asp:Label ID="Label7" runat="server" Text="About the job" class="h5-0 fw-bold"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                <hr />
            </div>
            <div class="row">
                    <asp:Label ID="Label8" runat="server" Text="Key Responsibilities" class="h-50 fw-bold"></asp:Label><br />
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("responsibility") %>'></asp:Label>
                <hr />
            </div>
            <%--Skills required--%>
            <div class="row">
                    <asp:Label ID="Label10" runat="server" Text="Skills required" class="h-50 fw-bold"></asp:Label><br />
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("requiements") %>'></asp:Label>
                <hr />
                
            </div>
           
            <div class="row">
                        <asp:Label ID="Label14" runat="server" Text="Number of openings" class="h-50 fw-bold"></asp:Label>
            </div>
          
            <div class="row">
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("openings") %>'></asp:Label>
            </div>
           <div class="row h5  d-flex flex-column align-items-end mt-4">
               <a href="apply.aspx?id=<%#Eval("id")%>" >Apply Now</a>
           </div>
        </div>
         </itemtemplate>
         </asp:DataList>
</asp:Content>
