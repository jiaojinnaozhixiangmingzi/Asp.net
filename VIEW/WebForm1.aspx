﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VIEW.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
        <p>
        <asp:RadioButton ID="RadioButton1" runat="server" />
            <asp:RadioButton ID="RadioButton2" runat="server" />
        </p>
       <asp:RadioButton ID="radSex" runat="server"  Text="男" Checked="true" GroupName="sex"/>
        
    </form>
</body>
</html>
