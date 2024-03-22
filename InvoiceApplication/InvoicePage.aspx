<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvoicePage.aspx.cs" Inherits="InvoiceApplication.InvoicePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }

        .auto-style2 {
            width: 275px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <%-----DETAILS--%>
                    <td>
                        <b>INVOICE NO :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="InvNumText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <b>BROKER :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="BrockerText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <b>DISPATCHED FROM :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="DispatchText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>INVOICE DATE :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="InvDateText" runat="server" Width="140px"></asp:TextBox>
                        <asp:ImageButton ID="InvDateImg" runat="server" ImageUrl="~/Calendar-PNG-File.png" ImageAlign="AbsBottom" Height="23px" Width="22px" OnClick="InvDateImg_Click" />
                        <asp:Calendar ID="InvDateCal" runat="server" OnSelectionChanged="InvDateCal_SelectionChanged" OnDayRender="InvDateCal_DayRender" BackColor="Silver"></asp:Calendar>
                    </td>
                    <td>
                        <b>CONTRACT NO :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="ContractText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <b>VEHICLE NO :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="VechNumText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>INVOICE TYPE :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="InvTypeTxt" runat="server"></asp:TextBox>
                    </td>

                    <td>
                        <b>CONF NO. :</b>
                    </td>
                    <td>
                        <asp:TextBox ID="ConfNumText" runat="server"></asp:TextBox>
                    </td>

                    <%--///BUTTON--%>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" Text="Insert" OnClick="InsertButton_Click" />

                        <asp:Button ID="SelectButton" runat="server" Text="Select" />

                        <asp:Button ID="UpdateButton" runat="server" Text="Update" />
                    </td>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" Text="Delete" />

                        <asp:Button ID="PrintButton" runat="server" Text="Print" />

                        <asp:Button ID="NewButton" runat="server" Text="New" />
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <tr>
                    <td class="auto-style1">
                        <b>BUYER: (BILL TO)</b>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel1" runat="server" Visible="false"></asp:Label>
                    </td>

                    <td class="auto-style2">
                        <b>CONSIGNEE: (SHIP TO)</b>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel2" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i>Address 1: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="BAddr1Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <i>Address 1: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="CAddr1Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i>Address 2: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="BAddr2Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <i>Address 2: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="CAddr2Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i>City: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="BCityText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <i>City: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="CCityText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i>State: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="BStateText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <i>State: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="CStateText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i>Pin Code: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="BPinCdText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <i>Pin Code: </i>
                    </td>
                    <td>
                        <asp:TextBox ID="CPinCdText" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <tr>
                    <td>
                        <b>
                            <center>DESC. OF GOODS</center>
                        </b>
                    </td>
                    <td>
                        <b>
                            <center>HSN CODE</center>
                        </b>
                    </td>
                    <td>
                        <b>
                            <center>BAGS</center>
                        </b>
                    </td>
                    <td>
                        <b>
                            <center>QTY. (MT)</center>
                        </b>
                    </td>
                    <td>
                        <b>
                            <center>RATE (₹)</center>
                        </b>
                    </td>
                    <td>
                        <b>
                            <center>AMOUNT (₹)</center>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Dog1Text" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Hcd1Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Bag1Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Qty1Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Rate1Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Amnt1Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Dog2Text" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Hcd2Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Bag2Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Qty2Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Rate2Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Amnt2Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Dog3Text" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Hcd3Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Bag3Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Qty3Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Rate3Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Amnt3Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Dog4Text" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Hcd4Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Bag4Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Qty4Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Rate4Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Amnt4Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Dog5Text" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Hcd5Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Bag5Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Qty5Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Rate5Text" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Amnt5Text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DummyLabel3" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel4" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel5" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel6" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="GSTLabel" runat="server" Visible="True" Text="GST: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="GSTText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DummyLabel7" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel8" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel9" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel10" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="TCSLabel" runat="server" Visible="True" Text="TCS: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TCSText" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DummyLabel11" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel12" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel13" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="TotalAdd" runat="server" Text="Add" />
                    </td>
                    <td>
                        <asp:Label ID="TotalLabel" runat="server" Visible="True" Text="Total: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TotalAmntText" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <tr>
                    <td>
                        <b>Amount in Words (₹):
                        </b>
                    </td>
                    <td>
                        <asp:Label ID="AmountInWordLabel" runat="server" Visible="True"></asp:Label>
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <tr>
                    <b>
                        <center>Tax Details</center>
                    </b>
                </tr>
            </table>

            <table>
                <tr>
                    <td>
                        <b>HSN Code</b>
                    </td>
                    <td>
                        <b>Taxable Value</b>
                    </td>
                    <td>
                        <b>SGST</b>
                    </td>
                    <td>
                        <b>CGST</b>
                    </td>
                    <td>
                        <b>IGST</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DummyLabel16" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel17" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="SGSTPercent" Text="%" runat="server" Width="180px"></asp:Label>
                        <asp:Label ID="SGSTAmount" Text="Amount (₹)" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="CGSTPercent" Text="%" runat="server" Width="180px"></asp:Label>
                        <asp:Label ID="CGSTAmount" Text="Amount (₹)" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="IGSTPercent" Text="%" runat="server" Width="180px"></asp:Label>
                        <asp:Label ID="IGSTAmount" Text="Amount (₹)" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="HSNCodeText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TexValText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="SGSTPercentText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="SGSTAmountText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="CGSTPercentText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="CGSTAmountText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="IGSTPercentText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IGSTAmountText" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <tr>
                    <td>
                        <b>
                            <asp:Label ID="TotalTaxLabel" runat="server" Text="Total Tax:" Width="180px"></asp:Label>
                        </b>
                    </td>
                    <td>
                        <asp:Label ID="DummyLabel18" runat="server" Width="175px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="SGSTPercentTotText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="SGSTAmountTotText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="CGSTPercentTotText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="CGSTAmountTotText" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="IGSTPercentTotText" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IGSTAmountTotText" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <hr style="width: 100%; text-align: left; margin-left: 0" />
            <table>
                <asp:GridView ID="InvoiceGrid" runat="server">
                </asp:GridView>
            </table>
        </div>
    </form>
</body>
</html>
