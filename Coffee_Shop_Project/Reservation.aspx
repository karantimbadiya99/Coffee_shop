<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="Coffee_Shop_Project.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Reservation</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">Reservation</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


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
                                <asp:TextBox ID="txtdate" class="form-control bg-transparent border-primary p-4" placeholder="Date" runat="server"></asp:TextBox>
                                <asp:Button ID="btnselectdate" CssClass="btn btn-primary py-2" runat="server" Text="Select Date" OnClick="btnselectdate_Click" />
                            </div>
                            
                            <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px"
                                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
                                OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>

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
                                <asp:TextBox ID="txtpeople" class="form-control bg-transparent border-primary p-4" placeholder="No. Of People" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtrequest" class="form-control bg-transparent border-primary p-4" placeholder="Special Request" runat="server" Style="height: 100px"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnbooking" class="btn btn-primary w-100 py-3" runat="server" Text="Book Now" OnClick="btnbooking_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Reservation End -->
    <%--<center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Time">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Person">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Person") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>--%>
</asp:Content>
