<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CategoriesList.ascx.vb" Inherits="JokePoint.CategoriesList" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<asp:DataList id="list" runat="server" CellPadding="4" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical">
	<HeaderTemplate>
		<IMG alt="" src="../Images/CategHeader.gif" border="0">
	</HeaderTemplate>
	<SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
	
	<SelectedItemTemplate>
        &nbsp;&raquo;
		<asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="CategorySelected">Label</asp:Label>
	</SelectedItemTemplate>

	<AlternatingItemStyle BackColor="White" />

	<FooterStyle BackColor="#CCCC99" />
	
	<FooterTemplate>
		<IMG alt="" src="../Images/CategFooter.gif" border="0">
	</FooterTemplate>

	<ItemStyle BackColor="#F7F7DE" />

	<ItemTemplate>
        &nbsp;&raquo;
		<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl='<%# "../default.aspx?DepartmentID=" & Request.QueryString("DepartmentID") & "&DepartmentIndex=" & Request.QueryString("DepartmentIndex") & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "categoryID") & "&CategoryIndex=" & Container.ItemIndex  %>' Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="CategoryUnselected">HyperLink</asp:HyperLink>
	</ItemTemplate>

	<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>
</asp:DataList>
