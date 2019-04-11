VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00400000&
   Caption         =   "Form1"
   ClientHeight    =   6945
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14370
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6945
   ScaleWidth      =   14370
   Begin VB.CommandButton Command6 
      Caption         =   "Sign Up"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6840
      TabIndex        =   8
      Top             =   1080
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Save Path"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11520
      TabIndex        =   7
      Top             =   3120
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Caption         =   "SEND"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5040
      TabIndex        =   6
      Top             =   5280
      Width           =   2895
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   840
      Top             =   4440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command3 
      Cancel          =   -1  'True
      Caption         =   "SIGN IT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   4320
      TabIndex        =   5
      Top             =   3600
      Width           =   4095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Log In"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6840
      TabIndex        =   4
      Top             =   1080
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00404080&
      Caption         =   "Browse"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4440
      TabIndex        =   3
      Top             =   2160
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4440
      TabIndex        =   1
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackColor       =   &H00404080&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   615
      Left            =   7320
      TabIndex        =   9
      Top             =   2160
      Width           =   6495
   End
   Begin VB.Label Label2 
      BackColor       =   &H00404080&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Select the document"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   855
      Left            =   1920
      TabIndex        =   2
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00404080&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "User"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   735
      Left            =   1920
      TabIndex        =   0
      Top             =   960
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Private Sub Command1_Click()
    CommonDialog1.ShowOpen
    Label3.Caption = CommonDialog1.FileName
End Sub

Private Sub Command2_Click()
    Dim fp As Integer, s As String, p As String, data As String, i As Integer
    s = App.Path + "\log.txt"
    fp = FreeFile
    Open s For Output As #fp
        Print #fp, Text1.Text
    Close #fp
    p = "python " + App.Path + "\Login.py"
    Shell p, vbHide
    Sleep (3000)
    Open s For Input As #fp
         data = Input(LOF(fp), #fp)
    Close #fp
    If data <> "None" Then
        Command6.Visible = False
    ElseIf data = "None" Then
        Command6.Visible = True
    End If
End Sub

Private Sub Command3_Click()
    Dim e As String
    e = "python " + App.Path + "\Encode.py"
    Shell e, vbHide
End Sub

Private Sub Command5_Click()
    Dim fp As Integer, s As String, p As String
    s = App.Path + "\hash.txt"
    fp = FreeFile
    Open s For Output As #fp
    Print #fp, Label3.Caption
    Close #fp
    
End Sub

Private Sub Command6_Click()
    Dim fp As Integer, s As String, p As String
    s = App.Path + "\log.txt"
    fp = FreeFile
    Open s For Output As #fp
        Print #fp, Text1.Text
    Close #fp
    p = "python " + App.Path + "\Signup.py"
    Shell p, vbHide
    Sleep (3000)
    
End Sub

Private Sub Text1_DbClick()
    Text1.Text = " "
    Command6.Visible = False
End Sub
