<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0">
            <TabPages>
                <dx:TabPage Text="Grid 1">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="grid"
                                DataSourceID="AccessDataSource1" KeyFieldName="ProductID">
                            </dx:ASPxGridView>
                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                                SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder] FROM [Products]"></asp:AccessDataSource>
                            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" ExportedRowType="All" GridViewID="ASPxGridView1">
                            </dx:ASPxGridViewExporter>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Grid 2">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" ClientInstanceName="grid"
                                DataSourceID="AccessDataSource2" KeyFieldName="OrderID">
                            </dx:ASPxGridView>
                            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
                                SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
                            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter2" runat="server" ExportedRowType="All" GridViewID="ASPxGridView2">
                            </dx:ASPxGridViewExporter>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Grid 3">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" ClientInstanceName="grid"
                                DataSourceID="AccessDataSource3" KeyFieldName="OrderID">
                            </dx:ASPxGridView>
                            <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/nwind.mdb"
                                SelectCommand="SELECT * FROM [Orders]"></asp:AccessDataSource>
                            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter3" runat="server" ExportedRowType="All" GridViewID="ASPxGridView3">
                            </dx:ASPxGridViewExporter>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        </dx:ASPxPageControl>
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Export" OnClick="ASPxButton1_Click">
        </dx:ASPxButton>
    </form>
</body>
</html>
