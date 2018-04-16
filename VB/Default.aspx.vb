Imports System
Imports System.Collections.Generic
Imports System.IO
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Compression
Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
		Dim memoryStream1 As New MemoryStream()
		Dim memoryStream2 As New MemoryStream()
		Dim memoryStream3 As New MemoryStream()
		Dim myZippedStream As New MemoryStream()

		ASPxGridViewExporter1.WriteXlsx(memoryStream1)
		ASPxGridViewExporter2.WriteXlsx(memoryStream2)
		ASPxGridViewExporter3.WriteXlsx(memoryStream3)

		memoryStream1.Seek(0, SeekOrigin.Begin)
		memoryStream2.Seek(0, SeekOrigin.Begin)
		memoryStream3.Seek(0, SeekOrigin.Begin)

		Using archive As New ZipArchive()
			archive.AddStream("grid1.xlsx", memoryStream1)
			archive.AddStream("grid2.xlsx", memoryStream2)
			archive.AddStream("grid3.xlsx", memoryStream3)
			archive.Save(myZippedStream)
		End Using

		Response.Clear()
		Response.ContentType = "application/zip"
		Response.AddHeader("Content-Disposition", "attachment; filename=exportFiles.zip")
		Response.AddHeader("Content-Length", myZippedStream.Length.ToString())
		Response.BinaryWrite(myZippedStream.ToArray())
		Response.Flush()
		Response.Close()
		Response.End()
	End Sub
End Class