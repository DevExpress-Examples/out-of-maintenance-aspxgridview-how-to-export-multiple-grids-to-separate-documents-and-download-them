<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to export multiple grids to separate documents and download them at once


By default, the HTTP protocol and client browsers do not provide the capability to download multiple files at once via a single Response or pass multiple responses to a single Request. <br>As a solution, it's possible to put multiple exported documents into a single zip archive and send this archive to the end-user. <br>Obtain the exported documents' memory streams by using the ASPxGridViewExporter's  <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteCsv.overloads">WriteCsv</a>/<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteDocx.overloads">WriteDocx</a> <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WritePdf.overloads">WritePdf</a> <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteRtf.overloads">WriteRtf</a>/<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteXls.overloads">WriteXls</a>/ <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteXlsx.overloads">WriteXlsx</a> methods and use the <a href="https://documentation.devexpress.com/#DocumentServer/CustomDocument15093">Compression Library</a> API to add these documents to a zip archive (e.g., see <a href="https://documentation.devexpress.com/#DocumentServer/CustomDocument15245">How to: Compress .NET Stream</a>). Then, write the resulting archive memory stream to the Response to allow a user download it.

<br/>


