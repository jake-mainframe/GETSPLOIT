//HELLOWTO    JOB (TSO),
//             'HELLOWTO',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,PASSWORD=SYS1 
//ASMFCL     EXEC PROC=ASMFCL                                    
//ASM.SYSIN   DD *                                                   
HELLO    CSECT
         LA    1,X'8'(15)
         SVC   35 
         SVC   3
         DC    X'00180000'
         DC    C'H4CK3D TH3 M41NFR4M3' 
         END                                 
//*
//LKED.SYSLMOD   DD DISP=SHR,DSN=IBMUSER.LOAD(HWORLD)


