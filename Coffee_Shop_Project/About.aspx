<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Coffee_Shop_Project.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">About Us</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">About Us</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    

    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">About Us</h4>
                <h1 class="display-4">Serving Since 1950</h1>
            </div>
            <div class="row">
                <div class="col-lg-4 py-0 py-lg-5">
                    <h1 class="mb-3">Our Story</h1>
                    <%--<h5 class="mb-3">Eos kasd eos dolor vero vero, lorem stet diam rebum. Ipsum amet sed vero dolor sea</h5>
                    --%><p>What started as a shared love for rich, aromatic coffee turned into a dream come true. Karan Timbadiya and Kotak Dewang, two coffee enthusiasts, envisioned a space where every cup tells a story and every sip feels like home. With passion in our hearts and beans in our hands, we created a coffee shop that blends warmth, flavor, and community. Whether you're here for a quick caffeine fix or a cozy conversation, you're always welcome.</p>
<%--                    <a href="" class="btn btn-secondary font-weight-bold py-2 px-4 mt-2">Learn More</a>--%>
                </div>
                <div class="col-lg-4 py-5 py-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="img/about.png" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-4 py-0 py-lg-5">
                    <h1 class="mb-3">Our Vision</h1>
                    <p>We believe coffee is more than just a drink—it’s an experience, a moment of connection, and a spark of inspiration. Our vision is to create a space where every cup brings people together, where quality meets passion, and where every visit feels like home. We are committed to crafting the perfect brew, sourcing the finest beans, and fostering a warm, welcoming atmosphere. As we grow, our goal remains the same: to spread the love of great coffee, one cup at a time.</p>
                    <%--<h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>--%>
<%--                    <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

</asp:Content>


