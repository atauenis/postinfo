VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "POST-���� � �����"
   ClientHeight    =   7935
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   6510
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   9.75
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7935
   ScaleWidth      =   6510
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtAnwser 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5535
      HideSelection   =   0   'False
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   3
      Text            =   "frmMain.frx":1CFA
      Top             =   2280
      Width           =   6255
   End
   Begin VB.Frame fraBeep 
      Caption         =   "������������ �������� ���"
      Height          =   1215
      Left            =   120
      TabIndex        =   8
      Top             =   840
      Width           =   6255
      Begin VB.CommandButton cmdGoBeep 
         Caption         =   "�������� ���� &������."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3240
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   480
         Width           =   2895
      End
      Begin VB.CheckBox chkSeamless 
         Caption         =   "���������� &�����������"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   3015
      End
      Begin VB.TextBox txtBeep 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1320
         TabIndex        =   1
         Text            =   "."
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label lblTypeBeep 
         Caption         =   "������� ���:"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   510
         Width           =   1215
      End
      Begin VB.Label lblMorzanka 
         Caption         =   "������� ����� ��� �������� �������� ��� ���� ��� �������."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   5535
      End
   End
   Begin VB.Frame fraPOST 
      Caption         =   "������������ POST-���"
      Height          =   615
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   6255
      Begin VB.TextBox txtCode 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1320
         MaxLength       =   2
         TabIndex        =   0
         Text            =   "FF"
         Top             =   240
         Width           =   375
      End
      Begin VB.CommandButton cmdGoPOST 
         Caption         =   "�������� ���� &���."
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1920
         TabIndex        =   4
         TabStop         =   0   'False
         Top             =   240
         Width           =   4215
      End
      Begin VB.Label lblHex 
         Caption         =   "h"
         Height          =   255
         Left            =   1680
         TabIndex        =   12
         ToolTipText     =   "Hexadecimal"
         Top             =   270
         Width           =   255
      End
      Begin VB.Label lblTypePOST 
         Caption         =   "������� ���:"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   270
         Width           =   1215
      End
   End
   Begin VB.Label lblUdachi 
      Alignment       =   2  'Center
      Caption         =   "����� � ������� ""���������""!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6480
      TabIndex        =   13
      Top             =   840
      Width           =   5670
   End
   Begin VB.Label lblAnwser 
      Caption         =   "�����:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2040
      Width           =   735
   End
   Begin VB.Menu mnuBIOS 
      Caption         =   "������� BIOS"
   End
   Begin VB.Menu mnuSave 
      Caption         =   "���������"
   End
   Begin VB.Menu mnuHelpMe 
      Caption         =   "�������"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ��������� POST Info (���������� � �������� � POST-����� "IBM PC/AT"-����������� ��)
' (C) 2011-12, �.�.; https://github.com/atauenis/postinfo

Dim IniLib As Ini.RWIni
Dim BiosFile As String

Public Function saveFile()
Dim strBuffer As String, fileHandle As Integer
MousePointer = vbHourglass
On Error GoTo endSaveAs
'CommonDialog1.ShowSave
filename = InputBox("������� ����:", "���� ��������� �����?", App.Path & "\report.txt")
If filename <> "" Then
'If CommonDialog1.FileName <> "" Then
    'FileName = CommonDialog1.FileName
    fileHandle = FreeFile()
    Open filename For Output As #fileHandle
    strText = "POST Info, ������ " & App.Major & "." & App.Minor & "." & App.Revision & vbCrLf & _
    "(C) 2011, �.�." & vbCrLf & txtAnwser.Text
    Print #fileHandle, strText
    Close #fileHandle
End If

endSaveAs:
    If Err.Number = 32755 Then ' ���� ������� "Cancel"
        MousePointer = vbDefault
        Exit Function
    End If
    
    If Err.Number <> 0 Then
        MsgBox "������ ��� ���������� �����:" & vbCrLf & Err.Description & " (���:" & Err.Number & ")", vbExclamation, "������"
    Else
        ' ��������
    End If
    MousePointer = vbDefault
End Function
Private Sub cmdGoBeep_Click()
txtAnwser.Text = "����������� ��������� ���� ��� " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & ":" & vbCrLf
Dim TheAnwser As String
Dim TheQuestion As String
If chkSeamless.Value = 1 Then
    TheQuestion = txtBeep.Text & "@"
Else
    TheQuestion = txtBeep.Text
End If
If TheQuestion = "" Or TheQuestion = "@" Then
    txtAnwser.Text = "�� �������� �������� � ����?" & vbCrLf & "���� ��, �� ��� ������ ��� ������," & vbCrLf & "��������� ���� � ��� �� � BIOS, �� �������� ���� PCI"
    Exit Sub
End If
TheAnwser = Replace(IniLib.ReadINI("beeps", TheQuestion, BiosFile), " ������� ", vbCrLf)
If TheAnwser = "" Then
    txtAnwser.Text = "������ ��������� ���� ���."
Else
    txtAnwser.Text = txtAnwser.Text & TheAnwser
End If
End Sub

Private Sub cmdGoPOST_Click()
txtAnwser.Text = "POST-��� " & UCase(txtCode.Text) & "h � " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & " ��������:"
Dim YourAnwser As String
YourAnwser = Replace(IniLib.ReadINI("POSTs", LCase(txtCode.Text), BiosFile), " ������� ", vbCrLf)
If Len(YourAnwser) = 0 Then
    txtAnwser.Text = "������ POST-���� ���." & vbCrLf & "��. www.ROM.by/POST/" & UCase(txtCode.Text) & " � �ndex � Google"
    Exit Sub
End If
txtAnwser.Text = txtAnwser.Text & vbCrLf & YourAnwser

If UCase(txtCode.Text) = "00" Then
    lblUdachi.Caption = "�� ���! ���������!"
Else
    lblUdachi.Caption = "����� � ������� ""���������""!"
End If
End Sub

Private Sub cmdLoadBios_Click()
Dim oldBiosFile As String
oldBiosFile = BiosFile
BiosFile = txtRomFile.Text
If IniLib.ReadINI("PostInfo", "BiosName", BiosFile) = "" Then
    MsgBox "������ ���� �������� BIOS ��� ���� �������� ��� ��� ��������.", vbExclamation, "������!"
    BiosFile = oldBiosFile
    Exit Sub
End If

Me.Caption = "POST Info - " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile)

txtAnwser.Text = "���� �������� BIOS'� " & BiosFile & vbCrLf '���� � �����
txtAnwser.Text = txtAnwser.Text & "��������. ��� " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & ", ������ " & IniLib.ReadINI("PostInfo", "Biosver", BiosFile) '�������� � ������
txtAnwser.Text = txtAnwser.Text & vbCrLf & vbCrLf & Replace(IniLib.ReadINI("PostInfo", "Notes", BiosFile), " ������� ", vbCrLf) '������� � �����

If IniLib.ReadINI("Postinfo", "pinfo", BiosFile) <> App.Major & "." & App.Minor Then
    MsgBox IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & " �� �������� ��� POST Info " & App.Major & "." & App.Minor & ".x!" & vbCrLf & "���������� POST Info ������ " & IniLib.ReadINI("Postinfo", "pinfo", BiosFile), vbExclamation, "��������!"
End If
End Sub

Private Sub cmdLoadBios_DragDrop(Source As Control, X As Single, Y As Single)
If Source.Caption = "BIOS:" Then
    IniLib.WriteINI "PostInfo", "Bios", BiosFile, App.Path & "\setup.ini"
    IniLib.WriteINI "PostInfo", "AppPath", "No", App.Path & "\setup.ini"
End If
End Sub

Private Sub Form_Load()
txtAnwser.Text = "POST Info, ������ " & App.Major & "." & App.Minor & "." & App.Revision & vbCrLf & _
"(C) 2011-12, �.�." & vbCrLf

Set IniLib = New RWIni

BiosFile = IniLib.ReadINI("PostInfo", "Bios", App.Path & "\setup.ini")
If IniLib.ReadINI("postinfo", "apppath", App.Path & "\setup.ini") = "Yes" Then
    BiosFile = App.Path & "\" & BiosFile
ElseIf IniLib.ReadINI("postinfo", "apppath", App.Path & "\setup.ini") = "No" Then
    '������ �� ������
Else
    MsgBox "���� 'setup.ini' ��������! ����������� ������ ����������.", vbCritical, "������."
    End
End If

If IniLib.ReadINI("PostInfo", "BiosName", BiosFile) = "" Then
    MsgBox "������ ���� �������� BIOS ��� ���� �������� ��� ��� ��������." & vbCrLf & "����������� ����������. ��������� ���� setup.ini.", vbCritical, "������!"
    End
End If

txtAnwser.Text = txtAnwser.Text & IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & ", ������ " & IniLib.ReadINI("PostInfo", "Biosver", BiosFile) '�������� � ������
txtAnwser.Text = txtAnwser.Text & vbCrLf & vbCrLf & Replace(IniLib.ReadINI("PostInfo", "Notes", BiosFile), " ������� ", vbCrLf) '������� � �����

Me.Caption = "POST Info - " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile)

If IniLib.ReadINI("Postinfo", "pinfo", BiosFile) <> App.Major & "." & App.Minor Then
    MsgBox IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & " �� �������� ��� POST Info " & App.Major & "." & App.Minor & ".x." & vbCrLf & "���������� POST Info ������ " & IniLib.ReadINI("Postinfo", "pinfo", BiosFile), vbExclamation, "��������!"
End If
End Sub

Private Sub Form_Resize()
On Error Resume Next
txtAnwser.Width = Me.ScaleWidth - (txtAnwser.Left * 2)
txtAnwser.Height = Me.ScaleHeight - (txtAnwser.Top + txtAnwser.Left)

If Me.ScaleWidth > lblUdachi.Left + lblUdachi.Width Then '���� ���� ����� �������� "����������"
    lblUdachi.Width = Me.ScaleWidth - lblUdachi.Left
    lblUdachi.Visible = True
Else
    lblUdachi.Visible = False
End If
End Sub

Private Sub mnuBIOS_Click()
Dim newBios As String
newBios = InputBox("������� ���� � ����� �������� BIOS:", "POST info", "award.ini")

If newBios = "" Then Exit Sub

Dim oldBiosFile As String
oldBiosFile = BiosFile
BiosFile = newBios

If IniLib.ReadINI("PostInfo", "BiosName", BiosFile) = "" Then
    MsgBox "������ ���� �������� BIOS ��� ���� �������� ��� ��� ��������.", vbExclamation, "������!"
    BiosFile = oldBiosFile
    Exit Sub
End If

Me.Caption = "POST Info - " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile)

txtAnwser.Text = "���� �������� BIOS'� " & BiosFile & vbCrLf '���� � �����
txtAnwser.Text = txtAnwser.Text & "��������. ��� " & IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & ", ������ " & IniLib.ReadINI("PostInfo", "Biosver", BiosFile) '�������� � ������
txtAnwser.Text = txtAnwser.Text & vbCrLf & vbCrLf & Replace(IniLib.ReadINI("PostInfo", "Notes", BiosFile), " ������� ", vbCrLf) '������� � �����

If IniLib.ReadINI("Postinfo", "pinfo", BiosFile) <> App.Major & "." & App.Minor Then
    MsgBox IniLib.ReadINI("PostInfo", "BiosName", BiosFile) & " �� �������� ��� POST Info " & App.Major & "." & App.Minor & ".x." & vbCrLf & "���������� POST Info ������ " & IniLib.ReadINI("Postinfo", "pinfo", BiosFile), vbExclamation, "��������!"
End If
End Sub

Private Sub mnuHelpMe_Click()
txtAnwser.Text = ReadFSO(App.Path & "\readme.txt")
End Sub

Public Function ReadFSO(filename As String) As String '������ ASCII ������ ����� FSO
'����� reference "Microsoft Scripting Runtime" ��� ������������� ReadFSO � SaveFSO
'������������ ���: ReadFSO "���_�����"
'������� ���������� ���������� �����.
'� ������ ���������� ����� ������������ "FILE_IS_NOT_IN_THE_WORLD"
'(C)2010, A.T.

Dim myFSO As Scripting.FileSystemObject
Dim myTS As TextStream

Set myFSO = New Scripting.FileSystemObject
If myFSO.FileExists(filename) Then
Dim myFile As File
Set myFile = myFSO.GetFile(filename)
Set myTS = myFile.OpenAsTextStream(ForReading)
ReadFSO = myTS.ReadAll
myTS.Close
Else
ReadFSO = "FILE_IS_NOT_IN_THE_WORLD"
End If
End Function

Private Sub mnuSave_Click()
Dim strBuffer As String, fileHandle As Integer
MousePointer = vbHourglass
On Error GoTo endSaveAs
'CommonDialog1.ShowSave
filename = InputBox("������� ����:", "���� ��������� �����?", App.Path & "\report.txt")
If filename <> "" Then
'If CommonDialog1.FileName <> "" Then
    'FileName = CommonDialog1.FileName
    fileHandle = FreeFile()
    Open filename For Output As #fileHandle
    strText = "POST Info, ������ " & App.Major & "." & App.Minor & "." & App.Revision & vbCrLf & _
    "(C) 2011, �.�." & vbCrLf & txtAnwser.Text
    Print #fileHandle, strText
    Close #fileHandle
End If

endSaveAs:
    If Err.Number = 32755 Then ' ���� ������� "Cancel"
        MousePointer = vbDefault
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        MsgBox "������ ��� ���������� �����:" & vbCrLf & Err.Description & " (���:" & Err.Number & ")", vbExclamation, "������"
    Else
        ' ��������
    End If
    MousePointer = vbDefault


End Sub

Private Sub txtBeep_Click()
cmdGoBeep.Default = True
End Sub

Private Sub txtCode_Change()
Dim CurPos As Integer
CurPos = txtCode.SelStart
txtCode.Text = UCase(txtCode.Text)
txtCode.Text = Replace(txtCode.Text, "�", "a")
txtCode.Text = Replace(txtCode.Text, "�", "b")
txtCode.Text = Replace(txtCode.Text, "�", "b")
txtCode.Text = Replace(txtCode.Text, "�", "c")
txtCode.Text = Replace(txtCode.Text, "�", "d")
txtCode.Text = Replace(txtCode.Text, "�", "e")
txtCode.Text = Replace(txtCode.Text, "�", "f")
txtCode.SelStart = CurPos


If Len(txtCode.Text) > 2 Then
    MsgBox "�� ����� � � """ & txtCode.Text & """ POST-����!", vbExclamation, "������"
    txtCode.Text = "FF"
End If
End Sub

Private Sub txtCode_Click()
cmdGoPOST.Default = True
End Sub
