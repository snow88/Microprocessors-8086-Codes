DATA SEGMENT
X DB 4DH
Y DB 4DH
MSG DB "YES, EQUAL.$"
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
MOV AX,DATA
MOV DS,AX

MOV BL,Y
MOV BH,00H
MOV AL,X
MOV AH,00H
SUB AX,BX
JNZ NOTEQ
LEA DX,MSG
MOV AH,09H
INT 21H
NOTEQ:
INT 03H
CODE ENDS
END START