<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Coffee_Shop_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div id="blog-carousel" class="carousel slide overlay-bottom" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" >
                    <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <h1><asp:Label ID="lblUser" runat="server" ></asp:Label>
                            
                        <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>

                        <h1 class="display-1 text-white m-0">COFFEE</h1>
                        <h2 class="text-white m-0">* SINCE 1950 *</h2>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>
                        <h1 class="display-1 text-white m-0">COFFEE</h1>
                        <h2 class="text-white m-0">* SINCE 1950 *</h2>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#blog-carousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#blog-carousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>
    <!-- Carousel End -->


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
<%--                    <h5 class="mb-3">Eos kasd eos dolor vero vero, lorem stet diam rebum. Ipsum amet sed vero dolor sea</h5>--%>
                    <p>What started as a shared love for rich, aromatic coffee turned into a dream come true. Karan Timbadiya and Kotak Dewang, two coffee enthusiasts, envisioned a space where every cup tells a story and every sip feels like home. With passion in our hearts and beans in our hands, we created a coffee shop that blends warmth, flavor, and community. Whether you're here for a quick caffeine fix or a cozy conversation, you're always welcome.</p>
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
                   <%-- <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</h5>
                    --%>
                    <%--<a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Service Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Our Services</h4>
                <h1 class="display-4">Fresh & Organic Beans</h1>
            </div>
            <div class="row">
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <img class="img-fluid mb-3 mb-sm-0" src="img/service-1.jpg" alt="">
                        </div>
                        <div class="col-sm-7">
                            <h4><i class="fa fa-truck service-icon"></i>Fastest Door Delivery</h4>
                            <p class="m-0">Craving your favorite coffee or a quick bite? We deliver fresh, hot, and delicious straight to your doorstep in no time! Sit back, relax, and let the flavors come to you. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <img class="img-fluid mb-3 mb-sm-0" src="img/service-2.jpg" alt="">
                        </div>
                        <div class="col-sm-7">
                            <h4><i class="fa fa-coffee service-icon"></i>Fresh Coffee Beans</h4>
                            <p class="m-0">We source the finest coffee beans, roasted to perfection for a rich, bold flavor in every cup. Fresh, aromatic, and full of character—because great coffee starts with great beans!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <img class="img-fluid mb-3 mb-sm-0" src="img/service-3.jpg" alt="">
                        </div>
                        <div class="col-sm-7">
                            <h4><i class="fa fa-award service-icon"></i>Best Quality Coffee</h4>
                            <p class="m-0">Crafted with passion and precision, our coffee is made from the finest beans, ensuring a rich aroma and exceptional taste in every cup. Because you deserve nothing but the best! </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <img class="img-fluid mb-3 mb-sm-0" src="img/service-4.jpg" alt="">
                        </div>
                        <div class="col-sm-7">
                            <h4><i class="fa fa-table service-icon"></i>Online Table Booking</h4>
                            <p class="m-0">Skip the wait and book your table online in just a few clicks! Whether it’s a coffee date or a cozy work session, your perfect spot is ready when you are. Easy, fast, and convenient! </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Offer Start -->
    <div class="offer container-fluid my-5 py-5 text-center position-relative overlay-top overlay-bottom">
        <div class="container py-5">
            <h1 class="display-3 text-primary mt-3">50% OFF</h1>
            <h1 class="text-white mb-3">Sunday Special Offer</h1>
            <h4 class="text-white font-weight-normal mb-4 pb-3">Only for Sunday from 1st Jan to 30th Jan 2025</h4>
            <form class="form-inline justify-content-center mb-4">
                <div class="input-group">
                   <%-- <input type="text" class="form-control p-4" placeholder="Your Email" style="height: 60px;">--%>
                   <asp:TextBox ID="TextBox1" class="form-control p-4"  placeholder="Your Email" runat="server" Height="60px" Width="148px"></asp:TextBox>

                    <div class="input-group-append">
<%--                        <button class="btn btn-primary font-weight-bold px-4" type="submit">Sign Up</button>--%>
                             <asp:Button ID="signup" class="btn btn-primary font-weight-bold px-4" runat="server" Text="Sign Up" Height="60px" Width="113px" />


                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Offer End -->


    <!-- Menu Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
                <h1 class="display-4">Competitive Pricing</h1>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="mb-5">Hot Coffee</h1>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-1.jpg" alt="">
                            <h5 class="menu-price">$5</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Black Coffee</h4>
                            <p class="m-0">Experience the rich, deep flavors of our perfectly brewed black coffee. Made from freshly ground premium coffee beans and brewed to perfection, it’s a simple yet powerful cup with no additives—just pure coffee bliss!</p>
                        </div>
                    </div>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-2.jpg" alt="">
                            <h5 class="menu-price">$7</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Chocolete Coffee</h4>
                            <p class="m-0">A delightful fusion of premium coffee and creamy chocolate, crafted to perfection. Smooth, velvety, and irresistibly delicious—every sip is a treat for your senses!</p>
                        </div>
                    </div>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-3.jpg" alt="">
                            <h5 class="menu-price">$9</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Coffee With Milk</h4>
                            <p class="m-0">A perfect balance of rich coffee and fresh, creamy milk, creating a smooth, comforting, and flavorful experience. Simple, classic, and always satisfying!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h1 class="mb-5">Cold Coffee</h1>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-1.jpg" alt="">
                            <h5 class="menu-price">$5</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Black Coffee</h4>
                            <p class="m-0">Enjoy the crisp, invigorating taste of pure black coffee, brewed cold for a smooth and bold flavor. No sugar, no milk—just rich coffee goodness, chilled to perfection!</p>
                        </div>
                    </div>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-2.jpg" alt="">
                            <h5 class="menu-price">$7</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Chocolete Coffee</h4>
                            <p class="m-0">A heavenly blend of smooth coffee and rich chocolate, served ice-cold for a refreshing and indulgent treat. Perfectly creamy, deliciously chocolaty—pure bliss in every sip!</p>
                        </div>
                    </div>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/menu-3.jpg" alt="">
                            <h5 class="menu-price">$9</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>Coffee With Milk</h4>
                            <p class="m-0">A perfect mix of chilled coffee and creamy milk, blended to perfection for a rich, smooth, and energizing treat. Cool, refreshing, and absolutely delicious!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Menu End -->


    <!-- Reservation Start -->
    <div class="container-fluid py-5">
    <div class="container">
        <div class="reservation position-relative overlay-top overlay-bottom">
            <div class="row align-items-center">
                <!-- Discount Offer Section -->
                <div class="col-lg-6 my-5 my-lg-0">
                    <div class="p-5">
                        <div class="mb-4">
                            <h1 class="display-3 text-primary">30% OFF</h1>
                            <h1 class="text-white">For Online Reservation</h1>
                        </div>
                        <p class="text-white">
                            Skip the wait and reserve your spot online in seconds! Whether it’s a cozy date or a coffee break, your perfect table is just a click away.
                        </p>
                        <ul class="list-inline text-white m-0">
                            <li class="py-2">
                                <i class="fa fa-check text-primary mr-3"></i>Quick & easy online booking
                            </li>
                            <li class="py-2">
                                <i class="fa fa-check text-primary mr-3"></i>No waiting, just walk in & enjoy
                            </li>
                            <li class="py-2">
                                <i class="fa fa-check text-primary mr-3"></i>Choose your preferred spot
                            </li>
                            <li class="py-2">
                                <i class="fa fa-check text-primary mr-3"></i>Perfect for meetings, dates & gatherings
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Reservation Form Section -->
                <div class="col-lg-6">
                    <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
                        <h1 class="text-white mb-4 mt-5">Book Your Table</h1>
                        <form class="mb-5">
                            <div class="form-group">
                                <asp:TextBox ID="txtname" class="form-control bg-transparent border-primary p-4" placeholder="Your Name" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtemail" class="form-control bg-transparent border-primary p-4" placeholder="Your Email" runat="server"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <asp:TextBox ID="txttime" class="form-control bg-transparent border-primary p-4" placeholder="Time" runat="server" TextMode="Time"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropDownList1" class="custom-select bg-transparent border-primary px-4" Style="height: 49px;" runat="server">
                                    <asp:ListItem>--Select AM or PM--</asp:ListItem>
                                    <asp:ListItem>AM</asp:ListItem>
                                    <asp:ListItem>PM</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtdate" class="form-control bg-transparent border-primary p-4" placeholder="Date" runat="server"></asp:TextBox>
                                <asp:Button ID="btnselectdate" CssClass="btn btn-primary py-2" runat="server" Text="Select Date"  />
                            </div>
                            
                            <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px"
                                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
                                 ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                            <div class="form-group">
                                <asp:TextBox ID="txtpeople" class="form-control bg-transparent border-primary p-4" placeholder="No. Of People" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtrequest" class="form-control bg-transparent border-primary p-4" placeholder="Special Request" runat="server" Style="height: 100px"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnbooking" class="btn btn-primary w-100 py-3" runat="server" Text="Book Now" OnClick="btnbooking_Click1"  />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Reservation End -->


    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Testimonial</h4>
                <h1 class="display-4">Our Clients Say</h1>
            </div>
            <div class="owl-carousel testimonial-carousel">
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-1.jpg" alt="">
                        <div class="ml-3">
                            <h4>Emily Carter</h4>
                            <i>Graphic Designer</i>
                        </div>
                    </div>
                    <p class="m-0">Absolutely love the rich flavors and warm atmosphere! The best coffee in town, hands down!</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-2.jpg" alt="">
                        <div class="ml-3">
                            <h4>David Johnson</h4>
                            <i>Entrepreneur</i>
                        </div>
                    </div>
                    <p class="m-0">A perfect spot for meetings and coffee breaks! Great service and even better coffee!</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-3.jpg" alt="">
                        <div class="ml-3">
                            <h4>Sophia Martinez</h4>
                            <i>Travel Blogger</i>
                        </div>
                    </div>
                    <p class="m-0">Every sip feels like an adventure! Fresh, aromatic, and simply delightful!</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-4.jpg" alt="">
                        <div class="ml-3">
                            <h4>Michael Brown</h4>
                            <i>Photographer</i>
                        </div>
                    </div>
                    <p class="m-0">The presentation, the taste, the vibe—everything here is Instagram-worthy!</p>
               </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

</asp:Content>
