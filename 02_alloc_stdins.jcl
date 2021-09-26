//ALLOCSTD   JOB (TSO),
//             'ALLOC DATASETS',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,PASSWORD=SYS1
//STEP01   EXEC PGM=IEFBR14    
//LGBT400  DD  DSN=IBMUSER.LGBT400,DISP=(NEW,CATLG),    
//             UNIT=SYSDA,VOL=SER=PUB000,                          
//             SPACE=(TRK,(1,1),RLSE),                              
//             DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=400)       
//DUMP006  DD  DSN=IBMUSER.DUMP006,DISP=(NEW,CATLG),    
//             UNIT=SYSDA,VOL=SER=PUB000,                          
//             SPACE=(TRK,(10,5),RLSE),                              
//             DCB=(DSORG=PS,RECFM=FB,LRECL=121,BLKSIZE=400)     
//LOC400   DD  DSN=IBMUSER.LOC400,DISP=(NEW,CATLG),    
//             UNIT=SYSDA,VOL=SER=PUB000,                          
//             SPACE=(TRK,(1,1),RLSE),                              
//             DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=400)   
//DUMP008  DD  DSN=IBMUSER.DUMP008,DISP=(NEW,CATLG),    
//             UNIT=SYSDA,VOL=SER=PUB000,                          
//             SPACE=(TRK,(10,5),RLSE),                              
//             DCB=(DSORG=PS,RECFM=FB,LRECL=121,BLKSIZE=400)                    
//WTO400   DD  DSN=IBMUSER.WTO400,DISP=(NEW,CATLG),    
//             UNIT=SYSDA,VOL=SER=PUB000,                          
//             SPACE=(TRK,(1,1),RLSE),                              
//             DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=400)                

