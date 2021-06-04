<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="JokePoint._default" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register src="UserControls/DepartmentsList.ascx" tagname="DepartmentsList" tagprefix="uc2" %>
<%@ Register Src="~/UserControls/DepartmentsList.ascx" TagPrefix="uc1" TagName="DepartmentsList" %>



<%@ Register src="UserControls/CategoriesList.ascx" tagname="CategoriesList" tagprefix="uc3" %>



<!DOCTYPE html>


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
       

    </div>
    <div id="contect">
        <div id="newsad">
            <uc1:DepartmentsList runat="server" id="DepartmentsList" />

            <uc3:CategoriesList ID="CategoriesList1" runat="server" />

        </div>
        <div id="news">商品展示(图片+详细描述+购买链接)
            
        </div>
    </div>
    </form>
</body>

</html>
