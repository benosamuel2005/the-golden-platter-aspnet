<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheGoldenPlatter._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hero-banner text-center" style="background-image: url('https://images.unsplash.com/photo-1514362545857-3bc16549766b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'); height: 400px;">
        <div style="background-color: rgba(0,0,0,0.6); padding: 40px; border-radius: 8px;">
            <h1 style="color: #d4af37; font-size: 3.5rem;">The Golden Platter</h1>
            <p class="lead" style="color: #fff;">Experience Culinary Excellence</p>
            <p><a href="Book.aspx" class="btn btn-gold btn-lg">Book a Table &raquo;</a></p>
        </div>
    </div>

    <div class="row section-padding">
        <div class="col-md-6">
            <h2 class="text-gold">About Us</h2>
            <p>
                Welcome to <strong>The Golden Platter</strong>, where tradition meets innovation. 
                Established in 2010, we have been serving the finest gourmet dishes sourced from local, organic ingredients.
                Our atmosphere is designed to provide you with a luxurious yet comfortable dining experience.
            </p>
            <p>
                Whether you are joining us for a romantic dinner, a business meeting, or a family celebration, 
                our dedicated staff ensures that every moment is memorable.
            </p>
        </div>
        <div class="col-md-6">
             <img src="https://images.unsplash.com/photo-1559339352-11d035aa65de?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="img-responsive" alt="Restaurant Interior" style="border: 2px solid #d4af37;" />
        </div>
    </div>

    <div class="row section-padding">
        <div class="col-md-12 text-center">
            <h2 class="text-gold">Chef's Specials</h2>
            <hr style="border-color: #333; width: 50%" />
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="img-responsive" style="width:100%; height:200px; object-fit:cover" />
                <h3 style="font-size: 1.5rem; margin-top: 15px;">Truffle Risotto</h3>
                <p>Creamy arborio rice with black truffles and parmesan crisp.</p>
                <p class="text-gold"><strong>$28.00</strong></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <img src="https://images.unsplash.com/photo-1600891964092-4316c288032e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="img-responsive" style="width:100%; height:200px; object-fit:cover" />
                <h3 style="font-size: 1.5rem; margin-top: 15px;">Seared Scallops</h3>
                <p>Pan-seared Atlantic scallops with pea purée and crispy pancetta.</p>
                <p class="text-gold"><strong>$32.00</strong></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <img src="https://images.unsplash.com/photo-1563805042-7684c019e1cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="img-responsive" style="width:100%; height:200px; object-fit:cover" />
                <h3 style="font-size: 1.5rem; margin-top: 15px;">Chocolate Lava</h3>
                <p>Rich dark chocolate fondant with a molten core and vanilla bean ice cream.</p>
                <p class="text-gold"><strong>$14.00</strong></p>
            </div>
        </div>
    </div>

</asp:Content>
