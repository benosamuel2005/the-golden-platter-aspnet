<%@ Page Title="Catering Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Calculator.aspx.cs" Inherits="TheGoldenPlatter.Calculator" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">Catering Estimator</h2>
            <p class="lead">Planning an event? Get an instant quote estimate.</p>
        </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="card">
                    <div class="form-group">
                        <label>Number of Guests</label>
                        <input type="number" id="txtGuests" class="form-control" placeholder="e.g. 50" min="1" />
                    </div>

                    <div class="form-group">
                        <label>Service Level</label>
                        <select id="ddlService" class="form-control">
                            <option value="25">Standard Buffet ($25/head)</option>
                            <option value="45">Premium Plated ($45/head)</option>
                            <option value="65">Royal Banquet ($65/head)</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Extras</label>
                        <div class="checkbox">
                            <label><input type="checkbox" id="chkDrinks" value="15" /> Drinks Package
                                (+$15/head)</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" id="chkDecor" value="500" /> Premium Table Decor (Flat
                                +$500)</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" id="chkService" value="200" /> Dedicated Wait Staff (Flat
                                +$200)</label>
                        </div>
                    </div>

                    <button type="button" id="btnCalculate" class="btn btn-gold btn-block">Calculate Quote</button>

                    <hr />

                    <div id="resultArea" style="display:none; text-align:center;">
                        <h4>Estimated Total Cost:</h4>
                        <h2 class="text-gold" id="lblTotal">$0.00</h2>
                        <p class="text-muted">*This is an estimate only. Please contact us for a final quote.</p>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#btnCalculate').click(function () {
                    var guests = parseInt($('#txtGuests').val());
                    var basePrice = parseInt($('#ddlService').val());
                    var total = 0;

                    if (isNaN(guests) || guests < 1) {
                        alert("Please enter a valid number of guests.");
                        return;
                    }

                    // Cost per head
                    total += guests * basePrice;

                    // Drinks (Per head)
                    if ($('#chkDrinks').is(':checked')) {
                        total += guests * 15;
                    }

                    // Flat fees
                    if ($('#chkDecor').is(':checked')) {
                        total += 500;
                    }
                    if ($('#chkService').is(':checked')) {
                        total += 200;
                    }

                    $('#lblTotal').text('$' + total.toFixed(2));
                    $('#resultArea').fadeIn();
                });
            });
        </script>

    </asp:Content>