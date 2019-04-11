VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form3 
   BackColor       =   &H00400000&
   Caption         =   "Form3"
   ClientHeight    =   5895
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14505
   BeginProperty Font 
      Name            =   "Bookman Old Style"
      Size            =   12
      Charset         =   0
      Weight          =   600
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   5895
   ScaleWidth      =   14505
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   495
      Left            =   1560
      TabIndex        =   2
      Top             =   4800
      Width           =   615
      ExtentX         =   1085
      ExtentY         =   873
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.Label Label2 
      Caption         =   $"Form3.frx":0000
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   960
      TabIndex        =   1
      Top             =   1680
      Width           =   12735
   End
   Begin VB.Label Label1 
      BackColor       =   &H00400000&
      Caption         =   "DIGITAL SIGNATURE"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   735
      Left            =   4800
      TabIndex        =   0
      Top             =   600
      Width           =   4695
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label2_Click()
    WebBrowser1.LocationName = "https://en.wikipedia.org/wiki/Digital_signature"
End Sub

