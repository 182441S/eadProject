<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="JobListing.aspx.cs" Inherits="EADProject.JobListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="StyleSheets/jobListing.css" rel="stylesheet" />

    </head>


    <body>

        <h2>Job History</h2>
        <br />
        <button class="tablink" onclick="openPage('Current', this, 'darkslategrey')">Current</button>
        <button class="tablink" onclick="openPage('History', this, 'darkslategrey')">History</button>

        <div id="History" class="tabcontent">

            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="container">
                        <img src="Images/ResortsWorldSentosa.jpg" style="width: 100px" />
                        <p><span>Resorts World Sentosa</span></p>
                        <br />
                        <p>Date of job:12-1-2017</p>
                        <p>Start time:10:00 AM</p>
                        <p>Time completed:3:00 PM</p>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="container">
                        <img src="Images/VictoriaConcertHall.jpg" style="width: 90px" />
                        <p><span>Victoria Concert Hall</span></p>
                        <br />
                        <p>Date of job:3-3-2017</p>
                        <p>Start time:10:00 AM</p>
                        <p>Time completed:4:00 PM</p>
                    </div>
                </div>
            </div>
        </div>

        <div id="Current" class="tabcontent">
            <div class="container">
                <img src="Images/Siloso%20Beach.jpg" style="width: 90px" />
                <p><span>Siloso Beach</span></p>
                <br />
                <p>Date of job:3-2-2018</p>
                <p>Start time:1:00 PM</p>
                <p>Time completed:8:00 PM</p>
            </div>

        </div>
        <script>
            document.getElementsByClassName('tablink')[0].click()
            function openPage(pageName, elmnt, color) {
                // Hide all elements with class="tabcontent" by default */
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }

                // Remove the background color of all tablinks/buttons
                tablinks = document.getElementsByClassName("tablink");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].style.backgroundColor = "";
                }

                // Show the specific tab content
                document.getElementById(pageName).style.display = "block";

                // Add the specific color to the button used to open the tab content
                elmnt.style.backgroundColor = color;
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();


        </script>
    </body>

</asp:Content>
