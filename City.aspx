<%@ Page Language="C#" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td>
    City
    </td>
    <td>
        <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="btn_submit" runat="server" Text="Submit" 
            onclick="txt_submit_Click" />
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
