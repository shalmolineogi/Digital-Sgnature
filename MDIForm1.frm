VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H00400000&
   Caption         =   "MDIForm1"
   ClientHeight    =   5655
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   14370
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu s 
      Caption         =   "&Send"
   End
   Begin VB.Menu r 
      Caption         =   "&Receive"
   End
   Begin VB.Menu a 
      Caption         =   "&About"
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub a_Click()
Form3.Show
End Sub

Private Sub r_Click()
Form2.Show
End Sub

Private Sub s_Click()
Form1.Show
End Sub
