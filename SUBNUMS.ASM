DATA SEGMENT
X DB ?
Y DB ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
MOV AX,DATA
MOV DS,AX

MOV AH,00H
MOV AL,X
MOV BH,00H
MOV BL,Y
SUB AX,BX

INT 03H
CODE ENDS
END START