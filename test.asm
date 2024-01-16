ExitProcess proto
WriteString proto
WriteInt64 proto
ReadString proto
ReadInt64 proto
Crlf proto
.data
;******************DATA************************
string0 db "!!!!!!!!!!!Parking Management System!!!!!!!!!!!",0
string1 db "Press 1  for Bike",0
string2 db "Press 2  for Car",0
string3 db "Press 3  for Truck",0
string4 db "Press 4  for Van",0
string9 db "Enter '0' to exit:",0
string10 db "***************Your slip************",0
string11 db "Your token number is:",0
string12 db "Floor number to park a car:",0
string13 db "Date :",0

string5 db "Enter your choice: ",0

stringA db "Enter BIKE #:",0
stringB db "Enter CAR #:",0
stringC db "Enter TRUCK #:",0
stringD db "Enter VAN #:",0

string6 db "Enter Date: ",0
string7 db "Enter Floor #: ",0
string8 db "Token :",0

char1 dq ?
char2 dq ?
token dq ?
veh_no dq ?
date dq ?
floor dq ?
result dq ?
count dq ?
.code
main proc

;**************PROJECT NAME**************
mov rdx,offset string0
call WriteString
call crlf

;*******MENU*******
call crlf
mov rdx,offset string1
call WriteString
call crlf

mov rdx,offset string2
call WriteString
call crlf

mov rdx,offset string3
call WriteString
call crlf

mov rdx,offset string4
call WriteString
call crlf

mov rdx,offset string9
call WriteString
call crlf



;***********TOKEN NUMBER***************

mov rdx,offset string8
call WriteString
mov token,101
mov rax,token
call WriteInt64
call crlf

Back:
REPEAT_:
;************choice**************
mov rdx,offset string5
call WriteString
mov rax,0
call ReadInt64
mov char1,rax
call crlf




;**********COMPARISION****************
CMP char1,1
JE BIKE
CMP char1,2
JE CAR
CMP char1,3
JE TRUCK
CMP char1,4
JE VAN
CMP char1,0
JE EXIT

;***************FOR BIKE**************

BIKE:
mov rdx,offset stringA
call WriteString
mov rax,0
call ReadInt64
mov veh_no,rax

mov rdx,offset string6
call WriteString
mov rax,0
call ReadInt64
mov date,rax

mov rdx,offset string7
call WriteString
mov rax,0
call ReadInt64
mov floor,rax

inc token
mov rdx,offset string8
call WriteString
mov rax,token
call WriteInt64
inc count
call crlf
call crlf
call Show
JMP Back

;***************FOR CAR**************

CAR:
mov rdx,offset stringB
call WriteString
mov rax,0
call ReadInt64
mov veh_no,rax

mov rdx,offset string6
call WriteString
mov rax,0
call ReadInt64
mov date,rax

mov rdx,offset string7
call WriteString
mov rax,0
call ReadInt64
mov floor,rax

inc token
mov rdx,offset string8
call WriteString
mov rax,token
call WriteInt64
inc count
call crlf
call crlf
call Show
JMP Back

;***************FOR TRUCK**************

TRUCK:
mov rdx,offset stringC
call WriteString
mov rax,0
call ReadInt64
mov veh_no,rax

mov rdx,offset string6
call WriteString
mov rax,0
call ReadInt64
mov date,rax

mov rdx,offset string7
call WriteString
mov rax,0
call ReadInt64
mov floor,rax

inc token
mov rdx,offset string8
call WriteString
mov rax,token
call WriteInt64
inc count
call crlf
call crlf
call Show
JMP Back


;***************FOR VAN**************

VAN:
mov rdx,offset stringD
call WriteString
mov rax,0
call ReadInt64
mov veh_no,rax

mov rdx,offset string6
call WriteString
mov rax,0
call ReadInt64
mov date,rax

mov rdx,offset string7
call WriteString
mov rax,0
call ReadInt64
mov floor,rax

inc token
mov rdx,offset string8
call WriteString
mov rax,token
call WriteInt64
inc count
call crlf
call crlf
call Show
JMP Back


Show PROC
mov rdx,offset string10
call WriteString
call crlf
mov rdx,offset string11
call WriteString
mov rax,token
call WriteInt64
call crlf
mov rdx,offset string12
call WriteString
mov rax,floor
call WriteInt64
call crlf
mov rdx,offset string13
call WriteString
mov rax,date
call WriteInt64
call crlf
ret
Show ENDP
EXIT:
call ExitProcess
Main ENDP
END