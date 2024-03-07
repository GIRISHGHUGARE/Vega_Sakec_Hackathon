<%@ Page Title="" Language="C#" MasterPageFile="~/MainHomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechDynamo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body{
            background-color:#F0F4F3;
        }
        #div1{
            width:730px;
            height: 400px;
            background-color:white;
            margin-bottom:50px;
            margin-left:300px;
            margin-top:60px;
            box-shadow: 0 10px 10px -1px black;
        }
        .txtbox
        {
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border:0px none;
            height:40px;
            width:300px;
            margin-top:10px;
            color:black;
            margin-left:20px;
            background-color:rgb(206, 201, 201);
        }
        .mybtn{
            height:35px;
            width:120px;
            font-size:20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border:0px none;
            background-color:rgb(245, 23, 23);
            color:white;
    
        }
    </style>
    <div id="div1" class="container">
        <%--<div style="display: inline-block; position: relative;">
            
            <img src="Images/somaiya_bg.jpg" width="360" height="450"/>
        </div>--%>
       <%-- <div style="position: absolute; height: 433px; width: 320px; transform: translate(0px,-455px); background-color: rgb(255, 0, 0, 0.55); padding: 10px 20px; text-align: center; color: white;">
            <span style="margin-top: 80px; font-size: 60px; display: inline-block; vertical-align: top; text-align: left;">Welcome to
            <br />
                Somaiya
            <br />
                Library
            </span>
            <span style="font-size: 20px; display: inline-block; vertical-align: top; text-align: left; margin-left: 15px; margin-top: 20px">Where energy that fuels the imagination resides

            </span>

        </div>--%>
        <div class="row">
        <div class="col-6">
            <table style="margin-top: 20px; margin-left: 20px; border-collapse: separate; border-spacing: 7px 20px;">
                <tr style="font-size: 35px;text-align:center">
                    <th>Login to Your Account</th>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="txtbox" placeholder="Enter Email ID"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required*" ControlToValidate="txt_username" Display="Dynamic" ForeColor="Red" Style="margin-left: 20px" />--%>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txt_pwd" runat="server" CssClass="txtbox" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required*" ControlToValidate="txt_pwd" Display="Dynamic" ForeColor="Red" Style="margin-left: 20px" />--%>

                    </td>
                </tr>
               
                <tr style="text-align: center">
                    <td>
                        <asp:Button ID="Button_login" runat="server" Text="Login" class="mybtn" OnClick="Button_login_Click"  />
                    </td>
                </tr>
                <tr id="error" style="text-align: center;">
                    <td style="color: red; font-size: 20px">
                        <asp:Label ID="lbl_error" Style="display: none" runat="server" Text="Invalid username or password!"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-6">
            <img src="Images/somaiya_bg.jpg" width="360" height="400"/>

        </div>
            </div>
    </div>




</asp:Content>
