<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="TechDynamo.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

<div class="container">
  <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card " >
                <div class="card-header text-center">
                    <span>Chat Box</span>
                </div>
                <asp:DataList ID="DataList1" runat="server">  
            <ItemTemplate>  
                <div class="card-body chat-care" >
                    <div class="row bg-danger-subtle rounded-3 " style="width:250px;font-size:16px">
                        <span ><%# Eval("Name") %></span>
                        <span><%# Eval("message") %></span>
                       <%-- <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                    </div>
                </div>
                </ItemTemplate>
                </asp:DataList>
                <div class="card-footer">
                    <div class="input-group">
                        <asp:TextBox ID="TextBox6" class="form-control input-sm"  placeholder="Type your message here..." runat="server"></asp:TextBox>                       
                        <span class="input-group-btn">
                            <asp:Button ID="Button1" runat="server" Text="Send" class="btn btn-primary" placeholder="Type your message here..." OnClick="Button1_Click" />
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>
