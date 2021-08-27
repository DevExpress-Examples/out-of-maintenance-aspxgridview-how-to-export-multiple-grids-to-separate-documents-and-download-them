<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534134/16.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T580898)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to export multiple grids to separate documents and download them at once
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t580898/)**
<!-- run online end -->


By default, the HTTP protocol and client browsers do not provide the capability to download multiple files at once via a single Response or pass multiple responses to a single Request. <br>As a solution, it's possible to put multiple exported documents into a single zip archive and send this archive to the end-user. <br>Obtain the exported documents' memory streams by using the ASPxGridViewExporter's  <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteCsv.overloads">WriteCsv</a>/<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteDocx.overloads">WriteDocx</a> <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WritePdf.overloads">WritePdf</a> <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteRtf.overloads">WriteRtf</a>/<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteXls.overloads">WriteXls</a>/ <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridExporterBase.WriteXlsx.overloads">WriteXlsx</a> methods and use the <a href="https://documentation.devexpress.com/#DocumentServer/CustomDocument15093">Compression Library</a> API to add these documents to a zip archive (e.g., see <a href="https://documentation.devexpress.com/#DocumentServer/CustomDocument15245">How to: Compress .NET Stream</a>). Then, write the resulting archive memory stream to the Response to allow a user download it.

<br/>


