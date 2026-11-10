<%@ Page Title="Book a Table" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Book.aspx.cs" Inherits="TheGoldenPlatter.Book" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">Book a Table</h2>
            <p class="lead">Reserve your spot for an unforgettable evening.</p>
        </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="card">
                    <asp:Panel ID="pnlForm" runat="server">
                        <div class="form-group">
                            <label>Your Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="John Doe">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                ErrorMessage="Name is required" ForeColor="Red" />
                        </div>

                        <div class="form-group">
                            <label>Date</label>
                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate"
                                ErrorMessage="Date is required" ForeColor="Red" />
                        </div>

                        <div class="form-group">
                            <label>Time</label>
                            <asp:TextBox ID="txtTime" runat="server" CssClass="form-control" TextMode="Time">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTime" runat="server" ControlToValidate="txtTime"
                                ErrorMessage="Time is required" ForeColor="Red" />
                        </div>

                        <div class="form-group">
                            <label>Number of Guests</label>
                            <asp:TextBox ID="txtGuests" runat="server" CssClass="form-control" TextMode="Number">
                            </asp:TextBox>
                            <asp:RangeValidator ID="rvGuests" runat="server" ControlToValidate="txtGuests"
                                MinimumValue="1" MaximumValue="20" Type="Integer"
                                ErrorMessage="Guests must be between 1 and 20" ForeColor="Red" />
                        </div>

                        <div class="form-group">
                            <label>Special Requests</label>
                            <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control" TextMode="MultiLine"
                                Rows="3"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnSubmit" runat="server" Text="Confirm Reservation"
                            CssClass="btn btn-gold btn-block" OnClick="btnSubmit_Click" />
                    </asp:Panel>

                    <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="text-center">
                        <h3 class="text-gold">Reservation Confirmed!</h3>
                        <p>Thank you, <asp:Label ID="lblConfirmName" runat="server"></asp:Label>.</p>
                        <p>We look forward to seeing you on <asp:Label ID="lblConfirmDate" runat="server"></asp:Label>.
                        </p>
                        <a href="MyBookings.aspx" class="btn btn-gold">View My Bookings</a>
                    </asp:Panel>

                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </asp:Content>