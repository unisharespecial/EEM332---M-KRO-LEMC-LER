;THE FORM OF AN ASSEMBLY LANGUAGE PROGRAM
;NOTE: USING SIMPLIFIED SEGMENT DEFINITION
		.MODEL SMALL
		.STACK 64
		.DATA
DATA1		DB	52H
DATA2		DB	29H
SUM		DB	?
		.CODE
MAIN		PROC	FAR		;this is the program entry point
		MOV	AX,@DATA	;load the data segment address
		MOV	DS,AX		;assign value to DS
		MOV	AL,DATA1	;get the first operand
		MOV	BL,DATA2	;get the second operand
		ADD	AL,BL		;add the operands
		MOV	SUM,AL	;store the result in location SUM
		MOV	AH,4CH	;set up to
		INT	21H		;return to DOS
MAIN		ENDP			
		END	MAIN		;this is the program exit point
