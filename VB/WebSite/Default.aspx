<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxGridView - custom group formatting</title>
	<style type="text/css">
	 .dxgvIndentCell, .dxgvIndentCell dxgv, .dxgvDataRow td.dxgvIndentCell
	 {
		display: none;    
	 }

	 .dxgvHeader
	 {
		display: none;
	 }

	 td.HeaderClass
	 {
		display: table-cell;
		*display: block;  /* IE7 and below: http://stackoverflow.com/questions/249103/ie7-and-the-css-table-cell-property */
	 }
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
		</div>
		<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
			KeyFieldName="ProductID" OnDataBound="ASPxGridView1_DataBound" OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated">
			<GroupSummary>
				<dx:ASPxSummaryItem FieldName="UnitPrice" SummaryType="Sum" ShowInGroupFooterColumn="Unit Price" />
			</GroupSummary>
			<TotalSummary>
				<dx:ASPxSummaryItem FieldName="UnitPrice" ShowInColumn="Unit Price" SummaryType="Sum" />
			</TotalSummary>
			<Columns>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
					<HeaderStyle CssClass="HeaderClass" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
					<HeaderStyle CssClass="HeaderClass" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
					<HeaderStyle CssClass="HeaderClass" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3" GroupIndex="0"
					SortIndex="0" SortOrder="Ascending">
					<HeaderStyle CssClass="HeaderClass" />
				</dx:GridViewDataTextColumn>
			</Columns>
			<SettingsPager PageSize="30">
			</SettingsPager>
			<Settings ShowFooter="True" ShowGroupPanel="True" ShowGroupFooter="VisibleIfExpanded"
				ShowGroupButtons="False"></Settings>
		</dx:ASPxGridView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [CategoryID] FROM [Products]">
		</asp:AccessDataSource>
	</form>
</body>
</html>