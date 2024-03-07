<%@ Page Title="" Language="C#" MasterPageFile="~/Company.Master" AutoEventWireup="true" CodeBehind="stud_applied.aspx.cs" Inherits="TechDynamo.stud_applied" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

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
        margin-top:250px;
    }
    .div1{
    margin-top:150px;
    margin-left:250px
}
</style>
    <div class="div1">
    <asp:DataList ID="DataList1" runat="server">
     <itemtemplate>
         <div class="col bg-dark bg-opacity-10 rounded-5 p-4 mb-3" style="height: 200px;width:900px">

             <asp:Label ID="PlacementTitle" runat="server" Text='<%# Eval("placement_name") %>' CssClass="h1 mb-4"></asp:Label>
             <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("comp_name") %>' CssClass="h4 d-block mb-3 text-opacity-50 text-black"></asp:Label>

             <div class="container">
                 <div class="row">
                     <div class="col-3">
                         <asp:Label ID="Salary" runat="server" Text='<%#  Eval("stud_name") %>'></asp:Label>
                     </div>
                     <div class="col-3">
                         <asp:Label ID="DurationLabel" runat="server" Text='<%#  Eval("stud_contact") %>'></asp:Label>
                     </div>
                     
                     <div class="col-3">
                         <asp:Label ID="Label1" runat="server" Text='<%#  Eval("stud_course") %>'></asp:Label>
                     </div>
                     <div class="col-3">
                         <asp:Label ID="Label2" runat="server" Text='<%#  Eval("stud_email") %>'></asp:Label>
                     </div>
                 </div>
             </div>
             
            
         </div>
      
     </itemtemplate>
 </asp:DataList>
        </div>
</asp:Content>
