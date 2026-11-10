<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs"
    Inherits="TheGoldenPlatter.FAQ" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="text-center section-padding">
            <h2 class="text-gold">Frequently Asked Questions</h2>
            <p class="lead">Everything you need to know.</p>
        </div>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="faq-container">

                    <div class="faq-item">
                        <div class="faq-question">
                            <span>Do you have vegan options?</span>
                            <span class="toggle-icon pull-right">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>Yes! We have a dedicated vegan section on our menu, and our chefs can modify many other
                                dishes to suit your dietary needs.</p>
                        </div>
                    </div>

                    <div class="faq-item">
                        <div class="faq-question">
                            <span>Is there a dress code?</span>
                            <span class="toggle-icon pull-right">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>We recommend smart casual attire. However, we want you to feel comfortable, so formal
                                wear is not strictly required.</p>
                        </div>
                    </div>

                    <div class="faq-item">
                        <div class="faq-question">
                            <span>Do I need to book in advance?</span>
                            <span class="toggle-icon pull-right">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>On weekends and holidays, we strongly recommend booking at least 2 days in advance.
                                Walk-ins are welcome but subject to availability.</p>
                        </div>
                    </div>

                    <div class="faq-item">
                        <div class="faq-question">
                            <span>Do you offer catering services?</span>
                            <span class="toggle-icon pull-right">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>Absolutely. We offer full catering for weddings, corporate events, and private parties.
                                Please check our Catering Calculator page for an estimate.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <style>
            .faq-item {
                margin-bottom: 10px;
                border: 1px solid #333;
                border-radius: 4px;
                background-color: #1e1e1e;
            }

            .faq-question {
                padding: 15px;
                cursor: pointer;
                font-weight: bold;
                color: #d4af37;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .faq-question:hover {
                background-color: #2a2a2a;
            }

            .faq-answer {
                display: none;
                /* Hidden by default */
                padding: 15px;
                border-top: 1px solid #333;
                color: #ccc;
            }
        </style>

        <script>
            // Custom jQuery for Accordion
            $(document).ready(function () {
                $('.faq-question').click(function () {
                    // Toggle the answer
                    $(this).next('.faq-answer').slideToggle(300);

                    // Toggle the icon
                    var icon = $(this).find('.toggle-icon');
                    if (icon.text() === '+') {
                        icon.text('-');
                    } else {
                        icon.text('+');
                    }
               });
            });
        </script>

    </asp:Content>