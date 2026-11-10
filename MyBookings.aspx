<%@ Page Title="My Bookings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="MyBookings.aspx.cs" Inherits="TheGoldenPlatter.MyBookings" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">All Bookings</h2>
            <p class="lead">Check your current reservations.</p>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="card">
                    <div class="table-responsive">
                        <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False"
                            DataSourceID="sdsBookings" CssClass="table table-striped table-dark" GridLines="None"
                            EmptyDataText="No bookings found.">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Ref #" SortExpression="Id" />
                                <asp:BoundField DataField="CustomerName" HeaderText="Name"
                                    SortExpression="CustomerName" />
                                <asp:BoundField DataField="BookingDate" HeaderText="Date" SortExpression="BookingDate"
                                    DataFormatString="{0:d}" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="GuestCount" HeaderText="Guests"
                                    SortExpression="GuestCount" />
                                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                            </Columns>
                            <HeaderStyle BackColor="#d4af37" ForeColor="Black" Font-Bold="true" />
                            <RowStyle ForeColor="White" />
                        </asp:GridView>
                    </div>

                    <asp:SqlDataSource ID="sdsBookings" runat="server"
                        ConnectionString="<%$ ConnectionStrings:GoldenPlatterDb %>"
                        SelectCommand="SELECT * FROM [Bookings] ORDER BY [BookingDate] DESC">
                    </asp:SqlDataSource>

                    <div class="text-center mt-20">
                        <a href="Book.aspx" class="btn btn-gold">Make Another Booking</a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Content>