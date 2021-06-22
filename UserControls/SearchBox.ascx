<%@ Control Language="vb" AutoEventWireup="false" Codebehind="SearchBox.ascx.vb" Inherits="JokePoint.SearchBox" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<style type="text/css">
    .auto-style1 {
        width: 243px;
        height: 88px;
    }
    .auto-style2 {
        height: 35px;
    }
</style>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="LightSteelBlue" class="auto-style1">
  <tr>
    <td>
      </td>
  </tr>
  <tr bgcolor="LightSteelBlue">
    <td align="middle">
      <asp:TextBox id="searchTextBox" runat="server" Width="90%" CssClass="SearchBox" BorderStyle="Dotted" MaxLength="100">
      </asp:TextBox>
    </td>
  </tr>
  <tr>
    <td align="middle" class="auto-style2">
      <asp:CheckBox id="allWordsCheckBox" CssClass="SearchBox" runat="server" Text="全字搜索">
      </asp:CheckBox>
    </td>
  </tr>
</table>