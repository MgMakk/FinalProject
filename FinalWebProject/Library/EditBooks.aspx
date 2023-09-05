﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooks.aspx.cs" Inherits="FinalWebProject.Library.EditBooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;">
        <asp:Label ID="Label11" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label>
        <br />
        <br />
    </div>
    <div>
        <table style="margin-left: auto; margin-right: auto;">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="500px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div>
        <asp:GridView ID="BookTable" runat="server" 
    DataKeyNames="Book_ID" AutoGenerateEditButton="True"
    onrowediting="BookTable_RowEditing" 
            onrowcancelingedit="BookTable_RowCancelingEdit" 
            onrowupdating="BookTable_RowUpdating">
</asp:GridView> 


        <asp:SqlDataSource ID="sqlBookTable" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
            SelectCommand="SELECT * FROM [Booktable]"></asp:SqlDataSource>
    </div>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
