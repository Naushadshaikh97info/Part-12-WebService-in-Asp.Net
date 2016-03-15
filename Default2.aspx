<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <table>
    <tr>
    <td>
    City
    </td>
    <td>
        <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
         <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" DelimiterCharacters=""
            Enabled="true" ServicePath="WebService.asmx" MinimumPrefixLength="0" ServiceMethod="Get_city"
            TargetControlID="txt_city">
        </cc1:AutoCompleteExtender>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
