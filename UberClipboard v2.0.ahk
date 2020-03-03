#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

taga=null
tagb=null
tagc=null
tagd=null
tage=null
tagf=null
tagg=null
tagh=null
tagi=null

msgbox,
(LClip
Welcome to UberClipboard

	********************************
	Control - C will let you copy things to a clipboard as normal
	********************************

	********************************	
	Windows - 1 will assign clipboard to the first slot
	Windows - 2 will assign clipboard to the second slot
	...
	Windows - 9 will assign clipboard to the ninth slot
	********************************	
	
	********************************
	Alt - 1 will paste what you have saved in the first slot
	Alt - 2 will paste what you have saved in the second slot
	...
	Alt - 9 will paste what you have saved in the ninth slot
	
	However if these slots are null,
	then it will ask you to type an input.
	********************************

	********************************
	Windows - 0 will show your assigned slots
	Alt - 0 will do the same
	********************************
	
	********************************
	Windows - s will save your assignments to a .txt file
	Alt - l will load your assignments from a .txt file	
	********************************

Hope you enjoy using UberClipboard!
-Zuggyg 2020 
)
return	

#1::
taga = %clipboard%
return

#2::
tagb = %clipboard%
return

#3::
tagc = %clipboard%
return

#4::
tagd = %clipboard%
return

#5::
tage = %clipboard%
return

#6::
tagf = %clipboard%
return

#7::
tagg = %clipboard%
return

#8::
tagh = %clipboard%
return

#9::
tagi = %clipboard%
return

#0::
msgbox,
(LTrim
	1 = %taga%

	2 = %tagb%

	3 = %tagc%
	
	4 = %tagd%

	5 = %tage%

	6 = %tagf%

	7 = %tagg%

	8 = %tagh%

	9 = %tagi%

)
return

!1::
if (taga="null")
{
InputBox, taga, UberClipboard, Fill Slot 1:
return
}
else
{
send %taga%
return
}

!2::
if (tagb="null")
{
InputBox, tagb, UberClipboard, Fill Slot 2:
return
}
else
{
send %tagb%
return
}

!3::
if (tagc="null")
{
InputBox, tagc, UberClipboard, Fill Slot 3:
return
}
else
{
send %tagc%
return
}

!4::
if (tagd="null")
{
InputBox, tagd, UberClipboard, Fill Slot 4:
return
}
else
{
send %tagd%
return
}

!5::
if (tage="null")
{
InputBox, tage, UberClipboard, Fill Slot 5:
return
}
else
{
send %tage%
return
}

!6::
if (tagf="null")
{
InputBox, tagf, UberClipboard, Fill Slot 6:
return
}
else
{
send %tagf%
return
}

!7::
if (tagg="null")
{
InputBox, tagg, UberClipboard, Fill Slot 7:
return
}
else
{
send %tagg%
return
}

!8::
if (tagh="null")
{
InputBox, tagh, UberClipboard, Fill Slot 8:
return
}
else
{
send %tagh%
return
}

!9::
if (tagi="null")
{
InputBox, tagi, UberClipboard, Fill Slot 9:
return
}
else
{
send %tagi%
return
}

!0::
msgbox,
(LTrim
	1 = %taga%

	2 = %tagb%

	3 = %tagc%
	
	4 = %tagd%

	5 = %tage%

	6 = %tagf%

	7 = %tagg%

	8 = %tagh%

	9 = %tagi%

)
return



#s::
InputBox, save, UberClipboard, Save to file?
filetype := ".txt"
save = %save%%filetype%

thingstowrite =
(LTrim
ÆsaÆ%taga%ÆeaÆ
ÆsbÆ%tagb%ÆebÆ
ÆscÆ%tagc%ÆecÆ
ÆsdÆ%tagd%ÆedÆ
ÆseÆ%tage%ÆeeÆ
ÆsfÆ%tagf%ÆefÆ
ÆsgÆ%tagg%ÆegÆ
ÆshÆ%tagh%ÆehÆ
ÆsiÆ%tagi%ÆeiÆ
)

file := FileOpen(save,"w")
file.write(thingstowrite)
file.close()
return




!l::

InputBox, load, UberClipboard, File to Load?
filetype := ".txt"
load = %load%%filetype%

temp++

FileRead,temp,%load%


taga := SubStr(temp,(InStr(temp, "ÆsaÆ")+4),(InStr(temp, "ÆeaÆ")-(InStr(temp, "ÆsaÆ")+4)))
tagb := SubStr(temp,(InStr(temp, "ÆsbÆ")+4),(InStr(temp, "ÆebÆ")-(InStr(temp, "ÆsbÆ")+4)))
tagc := SubStr(temp,(InStr(temp, "ÆscÆ")+4),(InStr(temp, "ÆecÆ")-(InStr(temp, "ÆscÆ")+4)))
tagd := SubStr(temp,(InStr(temp, "ÆsdÆ")+4),(InStr(temp, "ÆedÆ")-(InStr(temp, "ÆsdÆ")+4)))
tage := SubStr(temp,(InStr(temp, "ÆseÆ")+4),(InStr(temp, "ÆeeÆ")-(InStr(temp, "ÆseÆ")+4)))
tagf := SubStr(temp,(InStr(temp, "ÆsfÆ")+4),(InStr(temp, "ÆefÆ")-(InStr(temp, "ÆsfÆ")+4)))
tagg := SubStr(temp,(InStr(temp, "ÆsgÆ")+4),(InStr(temp, "ÆegÆ")-(InStr(temp, "ÆsgÆ")+4)))
tagh := SubStr(temp,(InStr(temp, "ÆshÆ")+4),(InStr(temp, "ÆehÆ")-(InStr(temp, "ÆshÆ")+4)))
tagi := SubStr(temp,(InStr(temp, "ÆsiÆ")+4),(InStr(temp, "ÆeiÆ")-(InStr(temp, "ÆsiÆ")+4)))


load.close()

msgbox,
(LTrim
	1 = %taga%

	2 = %tagb%

	3 = %tagc%
	
	4 = %tagd%

	5 = %tage%

	6 = %tagf%

	7 = %tagg%

	8 = %tagh%

	9 = %tagi%

)

return
