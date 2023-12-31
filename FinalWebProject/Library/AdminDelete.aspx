﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDelete.aspx.cs" Inherits="FinalWebProject.Library.AdminDelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
    body
        {
            background-color:#96B6C5;

                }
        table 
        {
            margin-left: auto;
            margin-right: auto;
           
        }

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <table style="text-align: center;">
    <tr>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    <td style="text-align:center"><asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label></td>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    </tr>
    </table>
        
        
        <hr />
    <div style="text-align: center;">
        <table style="margin-left: auto; margin-right: auto;">
            <tr>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" Height="55px" Width="560px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        OnClick="btnSearch_Click" Height="51px" Width="122px" />
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center;">
        <asp:GridView ID="AdminTable" runat="server" AutoGenerateColumns="False" 
            AutoGenerateDeleteButton="True" OnRowDeleting="BookTable_RowDeleting" 
            DataKeyNames="Gmail" CellPadding="4" ForeColor="#333333" GridLines="None" 
            Height="310px" Width="932px" 
            >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Admin_ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Gmail" HeaderText="Gmail" ReadOnly="True" 
                    SortExpression="Gmail" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Confirmpassword" HeaderText="Confirmpassword" 
                    SortExpression="Confirmpassword" />
            </Columns>
         
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         
        </asp:GridView>
        <asp:SqlDataSource ID="sqlAdminTable" runat="server" 
             ConnectionString="<%$ ConnectionStrings:booktable %>"
            DeleteCommand="DELETE FROM [admindata] WHERE Admin_ID = @Id" SelectCommand="SELECT * FROM [admindata]">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            </asp:SqlDataSource>
    </div>
    <div style="text-align: center;">
    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
    </div>
     <div style="text-align: right;">
    
         <asp:Button ID="Back" runat="server" Text="Back" Height="52px" 
             onclick="Back_Click" Width="178px" />
    
    </div>
    </form>
</body>
</html>
