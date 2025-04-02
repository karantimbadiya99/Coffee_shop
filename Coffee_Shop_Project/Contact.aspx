<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Coffee_Shop_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Contact</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">Contact</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Contact Us</h4>
                <h1 class="display-4">Feel Free To Contact</h1>
            </div>
            <div class="row px-3 pb-2">
                <div class="col-sm-4 text-center mb-3">
                    <i class="fa fa-2x fa-map-marker-alt mb-3 text-primary"></i>
                    <h4 class="font-weight-bold">Address</h4>
                    <p>123 Street, New York, USA</p>
                </div>
                <div class="col-sm-4 text-center mb-3">
                    <i class="fa fa-2x fa-phone-alt mb-3 text-primary"></i>
                    <h4 class="font-weight-bold">Phone</h4>
                    <p>+012 345 6789</p>
                </div>
                <div class="col-sm-4 text-center mb-3">
                    <i class="far fa-2x fa-envelope mb-3 text-primary"></i>
                    <h4 class="font-weight-bold">Email</h4>
                    <p>info@example.com</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 pb-5">
                    <iframe style="width: 100%; height: 443px;"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
                        frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="col-md-6 pb-5">
                    <div class="contact-form">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                               <%-- <input type="text" class="form-control bg-transparent p-4" id="name" placeholder="Your Name"
                                    required="required" data-validation-required-message="Please enter your name" />--%>
                                <asp:TextBox ID="txtname" class="form-control bg-transparent p-4" placeholder="Your Name" runat="server" Height="50px" Width="540px"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <%--input type="email" class="form-control bg-transparent p-4" id="email" placeholder="Your Email"
                                    required="required" data-validation-required-message="Please enter your email" />--%>
                                    <asp:TextBox ID="txtemail" class="form-control bg-transparent p-4" placeholder="Your Email" runat="server" Height="50px" Width="540px"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <%--<input type="text" class="form-control bg-transparent p-4" id="subject" placeholder="Subject"
                                    required="required" data-validation-required-message="Please enter a subject" />--%>
                                <asp:TextBox ID="txtsubject"  class="form-control bg-transparent p-4" placeholder="Subject" runat="server" Height="50px" Width="540px"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <%--<textarea class="form-control bg-transparent py-3 px-4" rows="5" id="message" placeholder="Message"
                                    required="required"
                                    data-validation-required-message="Please enter your message"></textarea>--%>
                                <asp:TextBox ID="txtmessage" class="form-control bg-transparent py-3 px-4" placeholder="Message" runat="server" Height="154px" Width="540px" ></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <%--<button class="btn btn-primary font-weight-bold py-3 px-5" type="submit" id="sendMessageButton">Send
                                    Message</button>--%>
                                <asp:Button class="btn btn-primary font-weight-bold py-3 px-5" ID="Button1" runat="server" Text="Send Message" Height="58px" Width="214px" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


</asp:Content>
