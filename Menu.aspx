<%@ Page Title="Our Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs"
    Inherits="TheGoldenPlatter.Menu" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">Exquisite Dining</h2>
            <p class="lead">Explore our carefully curated menu.</p>
        </div>

        <div class="row">
            <!-- Starters -->
            <div class="col-md-6 mb-20">
                <div class="card">
                    <h3 class="text-center text-gold">Starters</h3>
                    <br />
                    <div class="menu-item">
                        <h4>Garlic Prawns <span class="pull-right text-gold">$12.00</span></h4>
                        <p class="text-muted">Sautéed in garlic butter and herbs.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Bruschetta <span class="pull-right text-gold">$8.00</span></h4>
                        <p class="text-muted">Toasted sourdough with tomato and basil.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Calamari Rings <span class="pull-right text-gold">$14.00</span></h4>
                        <p class="text-muted">Served with tartare sauce and lemon.</p>
                    </div>
                </div>
            </div>

            <!-- Mains -->
            <div class="col-md-6 mb-20">
                <div class="card">
                    <h3 class="text-center text-gold">Mains</h3>
                    <br />
                    <div class="menu-item">
                        <h4>Ribeye Steak <span class="pull-right text-gold">$35.00</span></h4>
                        <p class="text-muted">300g premium beef served with mash.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Grilled Salmon <span class="pull-right text-gold">$29.00</span></h4>
                        <p class="text-muted">With asparagus and hollandaise sauce.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Mushroom Risotto <span class="pull-right text-gold">$22.00</span></h4>
                        <p class="text-muted">Wild mushrooms, parmesan, and truffle oil.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Desserts -->
            <div class="col-md-6 mb-20">
                <div class="card">
                    <h3 class="text-center text-gold">Desserts</h3>
                    <br />
                    <div class="menu-item">
                        <h4>Tiramisu <span class="pull-right text-gold">$10.00</span></h4>
                        <p class="text-muted">Classic Italian coffee-flavoured dessert.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Cheese Platter <span class="pull-right text-gold">$18.00</span></h4>
                        <p class="text-muted">Selection of fine cheeses and crackers.</p>
                    </div>
                </div>
            </div>

            <!-- Drinks -->
            <div class="col-md-6 mb-20">
                <div class="card">
                    <h3 class="text-center text-gold">Drinks</h3>
                    <br />
                    <div class="menu-item">
                        <h4>House Red <span class="pull-right text-gold">$9.00</span></h4>
                        <p class="text-muted">Glass of our finest Cabernet Sauvignon.</p>
                    </div>
                    <div class="menu-item">
                        <h4>Sparkling Water <span class="pull-right text-gold">$4.00</span></h4>
                        <p class="text-muted">San Pellegrino (750ml).</p>
                    </div>
                </div>
            </div>
        </div>

    </asp:Content>