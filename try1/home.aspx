<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="try1.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Additional content for the head section, if needed -->
    <style>
        
         .ll {
            /* Adjust the right position as needed */
            color: blue;
        }
        .home-content{
        position:revert;
        max-width: 400px; /* Adjust the maximum width as needed */
        margin: 60px auto; /* Center the content horizontally */
        text-align: center; /* Align the content to the right */
        margin-left:1050px; /* Move the div to the right */
        margin-top:-380px;
        }

    /* Additional styles for small number of words per line */
            .home-content p {
                text-align:justify; /* Justify the text for better alignment */
                line-height: 2; /* Adjust the line height for better readability */
            }
        .highlight-section {
            margin-top: 40px; /* Adjust spacing as needed */
        }

        .gallery-section {
            margin-top: 40px; /* Adjust spacing as needed */
        }

        .cta-section {
            margin-top: 40px; /* Adjust spacing as needed */
        }

        .cta-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffa500;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .cta-button:hover {
            background-color: #ff8000;
        }
        .image-container {
    display: flex; /* Use flexbox for better alignment and spacing */
    gap: 200px; /* Adjust the gap value as needed for spacing between images */
    flex-wrap: wrap; /* Allow images to wrap to the next row */
}

            .image-container img {
                max-width: 100%;
                height: auto;
                margin-bottom: 20px; /* Add margin at the bottom of each image */
                gap: 50px;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
      <div class="ll">
        <asp:Label ID="Label2" runat="server" Text="Your Text Here"></asp:Label></div>
    <div class="gallery-section">
        <h2>Explore Our Campus</h2>
        <div class="image-gallery">
            <img src="IMAGES\HOME\Home_page_img\Rasayani-Campus-Reception.jpg" alt="Campus Image 1" height="300px" width="300px" />
            <img src="IMAGES\HOME\Home_page_img\Pillai.jpg" alt="Campus Image 2" height="300px" width="300px" />
            <img src="IMAGES\HOME\Home_page_img\pexels-pixabay-267885.jpg" alt="Campus Image 3" height="300px" width="300px" />
            <!-- Add more images as needed -->
        </div>
    <div class="home-content">
        <h3>KAVACH 2023</h3>
        <p>Proud to Share that ABC College of Engineering, New Panvel (Autonomous, NAAC A+) is selected as one of the Five Nodal Centres all over India to host the Grand Finale of KAVACH 2023, a 36 Hrs Non-Stop Cyber Security Hackathon, on 8th – 9th August, 2023 with teams participating from all over the nation at Dr. K. M. Vasudevan  Campus, New Panvel.

We are greatly honoured and thankful to AICTE, Ministry of Home Affairs, Ministry of Education and MIC for this opportunity</p>
    </div>

    <div class="highlight-section">
        <h2>Why Choose ABC College?</h2>
        <ul>
            <li>Quality Education</li>
            <li>Experienced Faculty</li>
            <li>Modern Facilities</li>
            <li>Research Opportunities</li>
        </ul>
    </div>

    </div>

    <div class="cta-section">
        <h2>Apply Now!</h2>
        <p>Join our vibrant community and take the first step towards your future.</p>
        <a href="apply.aspx" class="cta-button">Apply Now</a>
    </div>
</asp:Content>
