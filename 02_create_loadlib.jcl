//CREALOAD   JOB (TSO),
//             'ADD IBMUSER LOADLIB',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,PASSWORD=SYS1
//STEP01   EXEC PGM=IEFBR14 
//LOADLIB  DD  DSN=IBMUSER.LOADLIB,DISP=(,CATLG),    
//             UNIT=3350,                                
//             SPACE=(TRK,(60,,15),RLSE),                              
//             DCB=(SYS1.LINKLIB)                                    