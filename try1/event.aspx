<%@ Page Title="" Language="C#" MasterPageFile="\Site1.Master" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="try1._event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="event_style.css" />
    <style>
        #form {
            text-align: center;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            font-size: 14px;
            color: #333333;
            margin-bottom: 10px;
            transition: border-color 0.3s, background-color 0.3s;
        }

        .form-control:focus {
            border-color: #ffa500;
            background-color: #fff;
        }

        .button-container {
            text-align: center;
        }

        .btn-primary {
            background-color: #ffa500;
            color: #ffffff;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s, transform 0.2s, box-shadow 0.3s;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            margin: 20px 10px;
            display: inline-block;
            width: fit-content;
            text-align: center;
        }

        .btn-primary:hover {
            background-color: #ff8000;
            transform: scale(1.05);
        }

        .btn-primary:active {
            background-color: #ff8000;
            transform: scale(0.98);
        }

        .btn-primary:focus {
            outline: none;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .fadeIn {
            animation: fadeIn 0.5s ease-in-out;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
    <title>Events</title>
    <div id="form" runat="server">
        <h2>Event Participation form</h2>
        <p>Fill the form properly</p>
        <br />
        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="txtName" runat="server" MaxLength="60" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="lblContact" runat="server" AssociatedControlID="txtContact">Contact:</asp:Label>
        <asp:TextBox ID="txtContact" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email ID: </asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" MaxLength="25" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="lblSelectEvent" runat="server" Text="Select the event:"></asp:Label>
        <div style="height: 150px; width: 700px; overflow-y: scroll;">
            <asp:CheckBoxList ID="cblEvents" runat="server" CssClass="form-control" onchange="updateSelectedEvents()">
                <asp:ListItem Text="Select an event" Value="0" title="Please select an event"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <br />
        <asp:Label ID="Selected" runat="server" Text="Selected Events: "></asp:Label>
        <asp:TextBox ID="txtSelectedEvents" runat="server" CssClass="form-control" ClientIDMode="Static" TextMode="MultiLine" Rows="5" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblAmount" runat="server" Text="Amount: "></asp:Label>
        <br />
        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
        <br />
         <asp:Label ID="lableID" runat="server" Text="Transaction ID: "></asp:Label>
        <asp:TextBox ID="txtTransaction" runat="server" CssClass="form-control"></asp:TextBox>
 <br />
        <div class="button-container">
            <asp:Button ID="btnPayment" runat="server" Text="Pay" CssClass="btn btn-primary" />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" />
        </div>
    <script type="text/javascript">
        function updateSelectedEvents() {
            // Get the selected events from the CheckBoxList
            var selectedEvents = document.querySelectorAll('[id*="<%= cblEvents.ClientID %>"] input:checked');

        // Create an array to store selected event names
        var selectedEventNames = [];
        var selectedEventFees = [];
        selectedEvents.forEach(function (event) {
            var listItem = event.parentNode;
            var eventName = listItem.innerText.trim();
            var eventAttributes = listItem.title.split("|");
            var eventFee = parseFloat(eventAttributes[1].trim()); // Use index 1 for fee

            // Check if the event is not already in the array before adding
            if (selectedEventNames.indexOf(eventName) === -1) {
                selectedEventNames.push(eventName);
                selectedEventFees.push(eventFee);
            }
        });

        // Set the selected event names in the textbox
        var txtSelectedEvents = document.getElementById('<%= txtSelectedEvents.ClientID %>');
        txtSelectedEvents.value = selectedEventNames.join('\n'); // Display each event on a new line

        // Calculate and update total entry fees
        var totalAmount = selectedEventFees.reduce(function (a, b) {
            return a + b;
        }, 0);

        // Set the total entry fees in the textbox
        var txtAmount = document.getElementById('<%= txtAmount.ClientID %>');
            txtAmount.value = totalAmount.toFixed(2); // Display total amount with two decimal places
        }
    </script>

    </div>
</asp:Content>
