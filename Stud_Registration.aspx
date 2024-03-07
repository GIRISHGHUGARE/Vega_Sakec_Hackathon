﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainHomePage.Master" AutoEventWireup="true" CodeBehind="Stud_Registration.aspx.cs" Inherits="TechDynamo.Stud_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
         @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');

         *, body {
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    -moz-osx-font-smoothing: grayscale;
}

html, body {
    height: 100%;
    background-color: #152733;
    /*overflow: hidden;*/
}


.form-holder {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 100vh;
}

.form-holder .form-content {
    position: relative;
    text-align: center;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    align-items: center;
    padding: 60px;
}

.form-content .form-items {
    border: 3px solid #fff;
    padding: 40px;
    display: inline-block;
    width: 100%;
    min-width: 540px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    text-align: left;
    -webkit-transition: all 0.4s ease;
    transition: all 0.4s ease;
}

.form-content h3 {
    color: #fff;
    text-align: left;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 5px;
}

.form-content h3.form-title {
    margin-bottom: 30px;
}

.form-content p {
    color: #fff;
    text-align: left;
    font-size: 17px;
    font-weight: 300;
    line-height: 20px;
    margin-bottom: 30px;
}


.form-content label, .was-validated .form-check-input:invalid~.form-check-label, .was-validated .form-check-input:valid~.form-check-label{
    color: #fff;
}

.form-content input[type=text], .form-content input[type=password], .form-content input[type=email], .form-content select {
    width: 100%;
    padding: 9px 20px;
    text-align: left;
    border: 0;
    outline: 0;
    border-radius: 6px;
    background-color: #fff;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    margin-top: 16px;
}


.btn-primary{
    background-color: #6C757D;
    outline: none;
    border: 0px;
     box-shadow: none;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active{
    background-color: #495056;
    outline: none !important;
    border: none !important;
     box-shadow: none;
}

.form-content textarea {
    position: static !important;
    width: 100%;
    padding: 8px 20px;
    border-radius: 6px;
    text-align: left;
    background-color: #fff;
    border: 0;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    outline: none;
    resize: none;
    height: 120px;
    -webkit-transition: none;
    transition: none;
    margin-bottom: 14px;
}

.form-content textarea:hover, .form-content textarea:focus {
    border: 0;
    background-color: #ebeff8;
    color: #8D8D8D;
}

.mv-up{
    margin-top: -9px !important;
    margin-bottom: 8px !important;
}

.invalid-feedback{
    color: #ff606e;
}

.valid-feedback{
   color: #2acc80;
}

    </style>


    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Get Started</h3>
                        <p>Provide Your Data Here.</p>
                        <form class="requires-validation" novalidate>
                            <div class="col-md-12">
                                <asp:TextBox ID="stud_id" runat="server" class="form-control" placeholder="Student Id"></asp:TextBox>
                            
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="stud_name" runat="server" class="form-control"  placeholder="Student Name" ></asp:TextBox>
                         
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="stud_contact" runat="server" class="form-control"  placeholder="Contact Number"></asp:TextBox>

                            </div>

                            <div class="col-md-12">
                                <asp:TextBox ID="stud_email" runat="server" class="form-control"  placeholder="E-mail Address"></asp:TextBox>
                          
                            </div>

                            <div class="col-md-12">
                                <asp:TextBox ID="stud_pwd" runat="server" class="form-control"  placeholder="Password" ></asp:TextBox>
                      
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control"  placeholder="Confirm Password" ></asp:TextBox>
                          
                            </div>

                            <div class="col-md-12">
                                <asp:TextBox ID="stud_city" runat="server" class="form-control" placeholder="City"></asp:TextBox>
                         
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="stud_course" runat="server" class="form-control"  placeholder="Course" ></asp:TextBox>
                        
                            </div>


                            <div class="col-md-12">
                                <asp:DropDownList ID="stud_year" runat="server" class="form-select mt-3">
                                    <asp:ListItem Enabled="False">Select</asp:ListItem>
                                    <asp:ListItem>First Year</asp:ListItem>
                                    <asp:ListItem>Second Year</asp:ListItem>
                                    <asp:ListItem>Third Year</asp:ListItem>
                                    <asp:ListItem>Fourth Year</asp:ListItem>

                                </asp:DropDownList>
                                

                                
                            </div>


                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                <label class="form-check-label">I confirm that all data are correct</label>
                                <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
                            </div>


                            <div class="form-button mt-3">
                                <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary" OnClick="Button1_Click" />
                              
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        (function () {
            'use strict'
            const forms = document.querySelectorAll('.requires-validation')
            Array.from(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</asp:Content>
