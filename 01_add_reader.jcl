//ADDREAD   JOB (TSO),
//             'ADD LOCAL READER',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1),
//             USER=IBMUSER,PASSWORD=SYS1
//STEP1 EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD *,DLM=@@
&BUFSIZE=3664                  BUFFER SIZE (5 PER TRACK ON 3350)        00000010
&CCOMCHR=$                     OPERATOR COMMAND IDENTIFIER              00000020
&CHKPT=MVS000                  CHECKPOINT DATASET ON MVS000             00000030
&CKPTIME=60                    CHECKPOINT EVERY 60 SECONDS              00000040
&DMNDSET=NO                    DEMAND SETUP OPTION                      00000050
&DSNPRFX=SYS1                  DATA SET PREFIX (SPOOL AND CKPT)         00000060
&ESTIME=0035                   ESTIMATED JOB TIME 35 MINUTES            00000070
&ESTLNCT=50                    ESTIMATED LINE COUNT 50,000 LINES        00000080
&ESTPUN=500                    ESTIMATED CARD COUNT 500 CARDS           00000090
*********************************************************************** 00000100
*                              INITIATORS                             * 00000110
*********************************************************************** 00000120
I1 START,CLASS=A               STANDARD                                 00000130
I2 START,CLASS=BA              QUEUED STANDARD                          00000140
I3 START,CLASS=S               SYSTEMS                                  00000150
I4 DRAIN,CLASS=DCBA                                                     00000160
I5 DRAIN,CLASS=ECBA                                                     00000170
I6 DRAIN,CLASS=FECBA                                                    00000180
INTRDR CLASS=A,NOHOLD,AUTH=0,PRIOINC=0,PRIOLIM=15                       00000190
&JCOPYLM=10                    MAX JOB OUTPUT COPIES                    00000200
&LINECT=61                     LINE PER PAGE LIMIT                      00000210
&MAXCLAS=5                     MAX JOB CLASSES PER INITIATOR            00000220
&MAXJOBS=128                   MAX JOBS IN JOB QUEUE                    00000230
&MAXPART=6                     MAX NUMBER OF BATCH INITIATORS           00000240
&MINJOES=100                   MIN NUMBER OF FREE JOB OUTPUT ELEMENTS   00000250
&MLBFSIZ=400                   MULTI-LEAVE BUFFER SIZE                  00000260
&MSGID=YES                     MSG ID OPTION                            00000270
&NOPRCCW=30                    PRINTER CCW LIMIT                        00000280
&NOPUCCW=45                    PUNCH CCW LIMIT                          00000290
&NUMACE=50                     AUTO COMMAND LIMIT                       00000300
&NUMBUF=128                    I/O BUFFER COUNT                         00000310
&NUMCLAS=3                     PRINTER SYSOUT CLASS LIMIT               00000320
&NUMCMBS=256                   NUMBER OF CONSOLE MESSAGE BUFFERS        00000330
&NUMDA=2                       MAX NUMBER OF SPOOL VOLUMES              00000340
&NUMINRS=5                     NUMBER OF INTERNAL READERS               00000350
&NUMJOES=1024                  NUMBER OF JOB OUTPUT ELEMENTS            00000360
&NUMPRTS=3                     MAX NUMBER OF LOCAL PRINTERS             00000370
&NUMPUNS=1                     MAX NUMBER OF LOCAL PUNCHES              00000380
&NUMRDRS=2                     MAX NUMBER OF LOCAL READERS              00000390
&NUMSMFB=96                    NUMBER OF SMF BUFFERS                    00000400
&NUMTGV=3330                   TRACK GROUPS PER SPOOL VOLUME (3350)     00000410
&OUTPOPT=0                     ACTION FOR JOBS EXCEEDING OUTPUT         00000420
&OUTXS=5000                    MSG INTERVAL FOR EST OUTPUT              00000430
&PRIDCT=30                     PRINT LINES PER SEPARATOR PAGE           00000440
&PRIHIGH=10                    MAX PRIORITY AGING LIMIT                 00000450
&PRILOW=3                      MIN PRIORITY AGING LIMIT                 00000460
*********************************************************************** 00000470
*                              LOCAL PRINTERS                         * 00000480
*********************************************************************** 00000490
PRINTER1       UNIT=00E,CLASS=A,FCB=6,FORMS=STD1,SEP,AUTO              C00000500
               NOPAUSE,START                                 1403       00000510
PRINTER2       UNIT=00F,CLASS=M,FCB=6,FORMS=STD1,SEP,AUTO              C00000520
               NOPAUSE,UCS=TB,START                          3211       00000530
*********************************************************************** 00000540
&PRIOOPT=YES                   SUPPORT /*PRIORITY CARD                  00000550
&PRIRATE=24                    PRIORITY INCREMENT INTERVAL              00000560
&PRTBOPT=YES                   DOUBLE BUFFER LOCAL PRINTERS             00000570
&PRTFCB=6                      FCB DEFAULT                              00000580
&PRTRANS=NO                    DON'T TRANSLATE LOWER->UPPER CASE        00000590
&PRTYOPT=YES                   PRTY SUPPORT OPTION                      00000600
&PUNBOPT=YES                   DOUBLE BUFFER LOCAL PUNCHES              00000610
*********************************************************************** 00000620
*                              LOCAL PUNCHES                          * 00000630
*********************************************************************** 00000640
PUNCH1         CLASS=B,SEP,AUTO,NOPAUSE,UNIT=00D,START       2540P      00000650
*********************************************************************** 00000660
&RCOMCHR=$                     INSTREAM COMMAND IDENTIFIER              00000670
&RDROPSL=00000300051221E00011  TSU LOGON                                00000680
&RDROPST=00014395951221E00011  STARTED TASK                             00000690
&RDROPSU=30000013051221E00011  BATCH                                    00000700
******** BPPMMMMSSCCCRLAAAAEF      DEFAULT CONVERSION PARAMETER FIELDS  00000710
******** !! !   ! !  !!!   !+-F--- DEFAULT ALLOCATION MESSAGE LEVEL     00000720
******** !! !   ! !  !!!   !         0: None listed unless abend        00000730
******** !! !   ! !  !!!   !         1: Allocation/Termination          00000740
******** !! !   ! !  !!!   !            messages listed                 00000750
******** !! !   ! !  !!!   +-E---  DEFAULT MSGLEVEL parameter           00000760
******** !! !   ! !  !!!             0: JOB statement only              00000770
******** !! !   ! !  !!!             1: input, catalogued procedure     00000780
******** !! !   ! !  !!!                statements, substitutions       00000790
******** !! !   ! !  !!!             2: input statements only           00000800
******** !! !   ! !  !!+-AAAA----  Command Group Authorization          00000810
******** !! !   ! !  !!              E000 = allow all commands          00000820
******** !! !   ! !  !+-L--------  BLP Authorization                    00000830
******** !! !   ! !  !               0: disallow (BLP as NL)            00000840
******** !! !   ! !  !               1: allow (BLP as BLP)              00000850
******** !! !   ! !  +-R---------  Operator Commands in jobstream       00000860
******** !! !   ! !                0=execute without display            00000870
******** !! !   ! !                1=display and execute w/o confirm    00000880
******** !! !   ! !                2=display, require confirm           00000890
******** !! !   ! !                3=ignore                             00000900
******** !! !   ! +-CCC----------  Default step REGION= parameter       00000910
******** !! +---+----------------  Default step TIME= parameter MMMMSS  00000920
******** !+-PP-------------------  Default job priority                 00000930
******** !                           Ignored, specify 00                00000940
******** +-B---------------------  Account/programmer required          00000950
********                           0 = none required                    00000960
********                           1 = Account required                 00000970
********                           2 = Programmer name required         00000980
********                           3 = Both required                    00000990
*********************************************************************** 00001000
*                              LOCAL READERS                          * 00001010
*********************************************************************** 00001020
READER1        AUTH=0,CLASS=A,NOHOLD,MSGCLASS=A,UNIT=00C     2540R      00001030
READER2        AUTH=0,CLASS=A,NOHOLD,MSGCLASS=X,UNIT=01A     2540R
&RECINCR=2                     RECORD ALTERNATION                       00001040
&RJOBOPT=5                     JOB CARD SCAN OPTION                     00001050
&RPRI(1)=6                     PRTY FOR ESTIMATED TIME                  00001060
&RPRI(2)=5                     PRTY FOR ESTIMATED TIME                  00001070
&RPRI(3)=4                     PRTY FOR ESTIMATED TIME                  00001080
&RPRI(4)=3                     PRTY FOR ESTIMATED TIME                  00001090
&RPRI(5)=2                     PRTY FOR ESTIMATED TIME                  00001100
&RPRI(6)=1                     PRTY FOR ESTIMATED TIME                  00001110
&RPRT(1)=5                     ESTIMATED TIME TABLE ENTRY               00001120
&RPRT(2)=10                    ESTIMATED TIME TABLE ENTRY               00001130
&RPRT(3)=59                    ESTIMATED TIME TABLE ENTRY               00001140
&RPRT(4)=120                   ESTIMATED TIME TABLE ENTRY               00001150
&RPRT(5)=279620                ESTIMATED TIME TABLE ENTRY               00001160
&RPRT(6)=279620                ESTIMATED TIME TABLE ENTRY               00001170
&RPS=YES                       RPS SUPPORT                              00001180
&SPOOL=SPOOL1                  SPOOL VOLUME SERIAL                      00001190
*********************************************************************** 00001200
*                              STC / TSU / BATCH JOB CLASSES          * 00001210
*********************************************************************** 00001220
&STC     NOJOURN,LOG,OUTPUT,NOTYPE6,NOTYPE26,NOUJP,NOUSO,PROCLIB=00,   C00001230
         PERFORM=1                                                      00001240
&TSU     NOJOURN,LOG,OUTPUT,NOTYPE6,NOTYPE26,NOUJP,NOUSO,PROCLIB=00,   C00001250
         PERFORM=2                                                      00001260
&A       NOJOURN,LOG,OUTPUT,PROCLIB=00,PERFORM=4  Low priority batch    00001270
&B       NOJOURN,LOG,OUTPUT,PROCLIB=00,PERFORM=1  Standard batch        00001280
&S       NOJOURN,LOG,OUTPUT,PROCLIB=00,PERFORM=3, Sysprog              C00001290
         CONVPARM=30000013051211E00011                                  00001300
STCMCLAS=Y                     STARTED TASK MESSAGE CLASS               00001310
&STDFORM=STD1                  DEFAULT FORMS ID                         00001320
&TGWARN=80                     THRESHOLD SPOOL UTILIZATION WARNING      00001330
&TIMEOPT=YES                   EXCEEDED EXEC TIME WARN                  00001340
&TIMEXS=1                      EXCEEDED EXEC TIME WARNING INTERVAL      00001350
&XLIN(1)=16777215              OUTPUT SELECT PRIORITY CATEGORY          00001360
&XLIN(2)=1000                                                           00001370
&XLIN(3)=2000                                                           00001380
&XLIN(4)=2500                                                           00001390
&XLIN(5)=6500                                                           00001400
&XLIN(6)=1000000                                                        00001410
&XLIN(7)=16777215                                                       00001420
TSUMCLAS=Y                     TSO USER MESSAGE CLASS                   00001430
*********************************************************************** 00001440
*                            OUTPUT CLASSES                           * 00001450
*********************************************************************** 00001460
$$A  PRINT,SYSOUT,NOHOLD,TRKCEL     STANDARD OUTPUT CLASS               00001470
$$B  PRINT,SYSOUT,NOHOLD,TRKCEL     STANDARD PUNCH OUTPUT CLASS         00001480
$$L  PRINT,SYSOUT,NOHOLD,TRKCEL     SYSLOG                              00001490
$$M  PRINT,SYSOUT,NOHOLD,TRKCEL     DOCUMENTATION                       00001500
$$X  PRINT,SYSOUT,HOLD              HELD BATCH                          00001510
$$Y  PRINT,SYSOUT,HOLD              HELD STC/TSU                        00001520
$$Z  PRINT,DUMMY,NOHOLD             TRASH (DISCARDED)                   00001530
*********************************************************************** 00001540
*                     AUTOMATIC OPERATOR COMMANDS                     * 00001550
*********************************************************************** 00001560
$T OSC3,D=J                                                             00001570
$T OSC3,D=T                                                             00001580
$VS,'MN JOBNAMES,T'                                                     00001590
$VS,'MN SESS,T'                                                         00001600
$VS,'V (100-104),ONLINE'                                                00001610
$VS,'$T PRT1,F=STD1'                                                    00001620
$VS,'$T PRT2,F=STD1'                                                    00001630
$VS,'$SPRT1'                                                            00001640
$VS,'$SPRT2'                                                            00001650 
@@
//SYSUT2 DD DSN=SYS1.PARMLIB(JES2PM00),DISP=OLD
//SYSIN  DD DUMMY 