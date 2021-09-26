//NORMRUN   JOB (TSO),
//             'Normal Run',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,PASSWORD=SYS1
//RUN    EXEC PGM=HELLO,REGION=0M
//SYSPRINT  DD SYSOUT=*
//STDOUT    DD SYSOUT=A
//STDIN     DD *
TESTRUN
//*
//STEPLIB   DD DISP=SHR,DSN=IBMUSER.LOAD
