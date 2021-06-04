<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DepartmentsList.ascx.vb" Inherits="JokePoint.DepartmentsList" %>

<asp:DataList id="list" runat="server" CellPadding="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Horizontal">
	
	<HeaderTemplate>
		<IMG alt="" src="../img/DeptHeader.gif" border="0">
	</HeaderTemplate>

	<ItemTemplate>
		&nbsp;&raquo;
		<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl='<%# "../default.aspx?DepartmentID=" & DataBinder.Eval(Container.DataItem, "departmentID") & "DepartmentIndex=" & Container.ItemIndex  %>' Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="DepartmentUnselected">
		</asp:HyperLink>
	</ItemTemplate>

	<SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />

	<SelectedItemTemplate>
		&nbsp;&raquo; 
		<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl='<%# "../default.aspx?DepartmentID=" & DataBinder.Eval(Container.DataItem, "departmentID") & "DepartmentIndex=" & Container.ItemIndex %>' Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' CssClass="DepartmentSelected">
		</asp:HyperLink>
	</SelectedItemTemplate>

	<FooterStyle BackColor="#CCCC99" ForeColor="Black" />

	<FooterTemplate>
		<IMG alt="" src="../img/DeptFooter.gif" border="0">
	</FooterTemplate>

	<HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>
</asp:DataList>
