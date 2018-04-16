using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Compression;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        MemoryStream memoryStream1 = new MemoryStream();
        MemoryStream memoryStream2 = new MemoryStream();
        MemoryStream memoryStream3 = new MemoryStream();
        MemoryStream myZippedStream = new MemoryStream();

        ASPxGridViewExporter1.WriteXlsx(memoryStream1);
        ASPxGridViewExporter2.WriteXlsx(memoryStream2);
        ASPxGridViewExporter3.WriteXlsx(memoryStream3);

        memoryStream1.Seek(0, SeekOrigin.Begin);
        memoryStream2.Seek(0, SeekOrigin.Begin);
        memoryStream3.Seek(0, SeekOrigin.Begin);

        using (ZipArchive archive = new ZipArchive())
        {
            archive.AddStream("grid1.xlsx", memoryStream1);
            archive.AddStream("grid2.xlsx", memoryStream2);
            archive.AddStream("grid3.xlsx", memoryStream3);
            archive.Save(myZippedStream);
        }

        Response.Clear();
        Response.ContentType = "application/zip";
        Response.AddHeader("Content-Disposition", "attachment; filename=exportFiles.zip");
        Response.AddHeader("Content-Length", myZippedStream.Length.ToString());
        Response.BinaryWrite(myZippedStream.ToArray());
        Response.Flush();
        Response.Close();
        Response.End();
    }
}