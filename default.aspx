<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="JokePoint._default" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register src="UserControls/DepartmentsList.ascx" tagname="DepartmentsList" tagprefix="uc2" %>
<%@ Register Src="~/UserControls/DepartmentsList.ascx" TagPrefix="uc1" TagName="DepartmentsList" %>
<%@ Register src="UserControls/CategoriesList.ascx" tagname="CategoriesList" tagprefix="uc3" %>
<%@ Register Src="~/UserControls/Catalog.ascx" TagPrefix="uc1" TagName="Catalog" %>
<%@ Register Src="~/UserControls/FirstPage.ascx" TagPrefix="uc1" TagName="FirstPage" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Joker</title>
    <link href="JokePoint.css" type ="text/css" rel ="stylesheet" />
    <link href="Basic.css" type ="text/css" rel ="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
    <div id="header">
        <uc1:Header runat="server" id="Header1" />
        <div id="name">
         <h1>毕业季主题书店</h1>
         <h3>——by菁华摄影工作室</h3></div>
    </div>
    <div class="QR">
            <img src="img/qr.jpg"style="width: 140px ;height: 140px" alt="QR"/></div>
    <div id="banner" class="auto-style1">
       

        <asp:TextBox ID="TextBox1" runat="server">（请输入商品名称）</asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" />
       

    </div>
    <div id="contect">
        <div id="newsad">
            <uc1:DepartmentsList runat="server" id="DepartmentsList" />

            <uc3:CategoriesList ID="CategoriesList1" runat="server" />

        </div>
        <div id="news">
            <tr>
				<td id="pageContentsCell" runat="server">
				</td>
			</tr>
        </div>
    </div>
    </form>
</body>

</html>
