<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="InvoiceApplication.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <td>
                    <h1>Invoice Login Page
                    </h1>
                </td>
                <tr>
                    <td>
                        User ID:
                    </td>
                    <td>
                        <asp:TextBox ID="UserId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                     </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="InvalidMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
