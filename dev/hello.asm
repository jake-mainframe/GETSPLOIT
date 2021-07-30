*
* Compiled by JCC - version 1.50.00
*          on Thu Jul 29 22:24:18 2021
*
@CODE    ALIAS C'@HELLO'
@CODE    CSECT
@CODE    AMODE ANY
@CODE    RMODE ANY
*
printf   ALIAS C'printf'
         EXTRN printf
@CRT0    ALIAS C'@crt0'
         EXTRN @CRT0
*
***************
*
* ****
* *****         main
* ****
*
***************
main     ALIAS C'main'
         ENTRY main
main     DS    0D
@REGION_1_1 DS    0H
         STM   14,12,12(13)
         L     2,8(0,13)
         LA    14,88(0,2)
         L     12,0(0,13)
         CL    14,4(0,12)
         BL    @F1-@REGION_1_1+4(0,15)
         L     10,0(0,12)
         BALR  11,10
         CNOP  0,4
@F1      DS    0H
         DC    F'88'
         STM   12,14,0(2)
         LR    13,2
         LR    12,15
         USING @REGION_1_1,12
*
         L     10,@dnx_1_1
         USING @dnx_1,10
*
*
* ***          ./hello.c:3 [main]
*
         LA    2,@lit_4
         ST    2,84(0,1)

         L     15,@ext_3
         LA    1,84(0,1)

         BALR  14,15
*
* ***          ./hello.c:4 [main]
*
         XR    15,15
@lit_2   DS    0H
         L     13,4(0,13)
         L     14,12(0,13)
         LM    1,12,24(13)
         BR    14
*
         DROP
*
         DS    0E
@dnx_1_1 DC    A(@dnx_1)
@dnx_1   DS    0E
*
@ext_3   DC    V(printf)
@cst_0   DC    X'00000000'
@cst_4   DC    X'00000004'
@lit_4   DS    0E
         DC    X'C8859393966B40E6'  Hello, W
         DC    X'969993845A00'      orld!.
         DC    2X'00'
*
         END
