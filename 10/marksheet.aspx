<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="marksheet.aspx.cs" Inherits="marksheet.marksheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1819px;
        }
        .auto-style4 {
            width: 908px;
        }
        .auto-style5 {
            width: 909px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr align="center">
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Student Mark Sheet Form"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label2" runat="server" Text="Enter Student Roll Number "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label3" runat="server" Text="Enter Student Name "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label4" runat="server" Text="Enter Course "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label5" runat="server" Text="Enter Semester "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label6" runat="server" Text="Enter Email Id "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label7" runat="server" Text="Enter Mobile Number "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label8" runat="server" Text="Enter Subject 1 Mark "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label9" runat="server" Text="Enter Subject 2 Mark "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label10" runat="server" Text="Enter Subject 3 Mark "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox9" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label11" runat="server" Text="Enter Subject 4 Mark "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox10" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label12" runat="server" Text="Enter Subject 5 Mark "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox11" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label13" runat="server" Text="Total "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label14" runat="server" Text="Per "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label15" runat="server" Text="Grade"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">
                        <asp:Label ID="Label16" runat="server" Text="Result "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Done" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Submit" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Clear" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
