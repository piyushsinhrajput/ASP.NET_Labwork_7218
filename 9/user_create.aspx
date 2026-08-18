<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_create.aspx.cs" Inherits="user_uti.user_create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1819px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 908px;
            height: 30px;
        }
        .auto-style4 {
            width: 909px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr align="center">
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Student Reg. Form "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" align="Right">
                    <asp:Label ID="Label2" runat="server" Text="Enter Student Name "></asp:Label>
&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="Right">
                    <asp:Label ID="Label3" runat="server" Text="Age "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="Right">
                    <asp:Label ID="Label4" runat="server" Text="Male"></asp:Label>
                </td>
                <td align="Left">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td align="Right">
                    <asp:Label ID="Label5" runat="server" Text="Email "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="Right">
                    <asp:Label ID="Label6" runat="server" Text="Password "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="Right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
