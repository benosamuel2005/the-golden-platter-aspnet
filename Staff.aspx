<%@ Page Title="Our Team" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs"
    Inherits="TheGoldenPlatter.Staff" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">Meet the Team</h2>
            <p class="lead">The passionate individuals behind your dining experience.</p>
        </div>

        <div class="row text-center">
            <!-- Staff 1 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1583394293214-28ded15ee548?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
                        class="img-circle"
                        style="width: 150px; height: 150px; object-fit: cover; border: 3px solid #d4af37;" />
                    <h3 class="text-gold">Gordon Ramsey</h3>
                    <p><strong>Head Chef</strong></p>
                    <p class="text-muted">With over 15 years of experience in Michelin-star kitchens, Gordon brings
                        passion and perfection to every plate.</p>
                </div>
            </div>

            <!-- Staff 2 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1595273670150-bd0c3c392e46?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
                        class="img-circle"
                        style="width: 150px; height: 150px; object-fit: cover; border: 3px solid #d4af37;" />
                    <h3 class="text-gold">Julia Child</h3>
                    <p><strong>Sous Chef</strong></p>
                    <p class="text-muted">Julia specializes in French cuisine and ensures that our sauces and pastries
                        are nothing short of spectacular.</p>
                </div>
            </div>

            <!-- Staff 3 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1560787313-5dff3307e257?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
                        class="img-circle"
                        style="width: 150px; height: 150px; object-fit: cover; border: 3px solid #d4af37;" />
                    <h3 class="text-gold">Marco White</h3>
                    <p><strong>Restaurant Manager</strong></p>
                    <p class="text-muted">Marco ensures that the front-of-house operations run smoothly and that every
                        guest feels like royalty.</p>
                </div>
            </div>
        </div>

    </asp:Content>