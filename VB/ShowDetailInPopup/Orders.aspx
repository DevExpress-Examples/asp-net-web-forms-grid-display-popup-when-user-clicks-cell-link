<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Orders.aspx.vb" Inherits="Orders" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
		  DataSourceID="SqlDataSource1" KeyFieldName="OrderID" Width="100%">
			<Columns>
				<dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Freight" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ShipPostalCode" VisibleIndex="7">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="8">
				</dx:GridViewDataDateColumn>
			</Columns>
		</dx:ASPxGridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
			FilterExpression="CustomerID='{0}'" SelectCommand="SELECT [OrderID], [CustomerID], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipCountry], [ShipPostalCode], [ShippedDate] FROM [Orders]">
			<FilterParameters>
				<asp:QueryStringParameter Name="CustomerID" QueryStringField="id" />
			</FilterParameters>
		</asp:SqlDataSource>
	</div>
	</form>
</body>
</html>