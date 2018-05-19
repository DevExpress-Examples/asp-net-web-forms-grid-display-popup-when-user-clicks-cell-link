<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>How to display detail data within a popup window</title>
	<script type="text/javascript">
		function ShowDetailPopup(customerID) {
			popup.SetContentUrl('Orders.aspx?id=' + customerID);
			popup.Show();
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CustomerID">
			<Columns>
				<dx:GridViewDataHyperLinkColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="0">
					<PropertiesHyperLinkEdit NavigateUrlFormatString="javascript:ShowDetailPopup('{0}');"
						Text="Show Orders">
					</PropertiesHyperLinkEdit>
				</dx:GridViewDataHyperLinkColumn>
				<dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="City" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
			SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [Country], [City] FROM [Customers]">
		</asp:SqlDataSource>
		<dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" Width="800px" Height="400px">
			<ContentCollection>
				<dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
	</div>
	</form>
</body>
</html>