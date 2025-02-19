*********************************************************************** 
*                                                                     * 
* Copyright 2010 – 2024 Rocket Software, Inc. or its affiliates.      * 
* This software may be used, modified, and distributed                * 
* (provided this notice is included without modification)             * 
* solely for internal demonstration purposes with other               * 
* Rocket® products, and is otherwise subject to the EULA at           * 
* https://www.rocketsoftware.com/company/trust/agreements.            * 
*                                                                     * 
* THIS SOFTWARE IS PROVIDED "AS IS" AND ALL IMPLIED                   * 
* WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF                     * 
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,               * 
* SHALL NOT APPLY.                                                    * 
* TO THE EXTENT PERMITTED BY LAW, IN NO EVENT WILL                    * 
* ROCKET SOFTWARE HAVE ANY LIABILITY WHATSOEVER IN CONNECTION         * 
* WITH THIS SOFTWARE.                                                 * 
*                                                                     * 
*********************************************************************** 

DEFINE FILE(BNKACC) GROUP(BANKGRP)
DESCRIPTION(Bank account)
       DSNAME(MFI01V.MFIDEMO.BNKACC) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) _FILETYPE(KSDS)
       _MAXRECLEN(00100) _MINRECLEN(00100) _KEYPOSITION(00006)
       _KEYLENGTH(00009) ADD(YES) BROWSE(YES) DELETE(YES) READ(YES)
       UPDATE(YES) JOURNAL(NO) JNLREAD(NONE) JNLSYNCREAD(NO)
       JNLUPDATE(NO) JNLADD(NONE) JNLSYNCWRITE(YES)
       RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO) BACKUPTYPE(STATIC)
DEFINE FILE(BNKACC1) GROUP(BANKGRP)
DESCRIPTION(Bank account secondary index)
       DSNAME(MFI01V.MFIDEMO.BNKACC.AIX1) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) ADD(YES)
       BROWSE(YES) DELETE(YES) READ(YES) UPDATE(YES) JOURNAL(NO)
       JNLREAD(NONE) JNLSYNCREAD(NO) JNLUPDATE(NO) JNLADD(NONE)
       JNLSYNCWRITE(YES) RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO)
       BACKUPTYPE(STATIC)
DEFINE FILE(BNKATYPE) GROUP(BANKGRP)
DESCRIPTION(Bank account type)
       DSNAME(MFI01V.MFIDEMO.BNKATYPE) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) _FILETYPE(KSDS)
       _MAXRECLEN(00100) _MINRECLEN(00100) _KEYPOSITION(00001)
       _KEYLENGTH(00001) ADD(YES) BROWSE(YES) DELETE(YES) READ(YES)
       UPDATE(YES) JOURNAL(NO) JNLREAD(NONE) JNLSYNCREAD(NO)
       JNLUPDATE(NO) JNLADD(NONE) JNLSYNCWRITE(YES)
       RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO) BACKUPTYPE(STATIC)
DEFINE FILE(BNKCUST) GROUP(BANKGRP)
DESCRIPTION(Bank customers)
       DSNAME(MFI01V.MFIDEMO.BNKCUST) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) _FILETYPE(KSDS)
       _MAXRECLEN(00250) _MINRECLEN(00250) _KEYPOSITION(00001)
       _KEYLENGTH(00005) ADD(YES) BROWSE(YES) DELETE(YES) READ(YES)
       UPDATE(YES) JOURNAL(NO) JNLREAD(NONE) JNLSYNCREAD(NO)
       JNLUPDATE(NO) JNLADD(NONE) JNLSYNCWRITE(YES)
       RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO) BACKUPTYPE(STATIC)
DEFINE FILE(BNKCUST1) GROUP(BANKGRP)
DESCRIPTION(Bank account customers secondary index 1)
       DSNAME(MFI01V.MFIDEMO.BNKCUST.AIX1) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) ADD(YES)
       BROWSE(YES) DELETE(YES) READ(YES) UPDATE(YES) JOURNAL(NO)
       JNLREAD(NONE) JNLSYNCREAD(NO) JNLUPDATE(NO) JNLADD(NONE)
       JNLSYNCWRITE(YES) RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO)
       BACKUPTYPE(STATIC)
DEFINE FILE(BNKCUST2) GROUP(BANKGRP)
DESCRIPTION(Bank account customers secondary index 2)
       DSNAME(MFI01V.MFIDEMO.BNKCUST.AIX2) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) ADD(YES)
       BROWSE(YES) DELETE(YES) READ(YES) UPDATE(YES) JOURNAL(NO)
       JNLREAD(NONE) JNLSYNCREAD(NO) JNLUPDATE(NO) JNLADD(NONE)
       JNLSYNCWRITE(YES) RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO)
       BACKUPTYPE(STATIC)
DEFINE FILE(BNKHELP) GROUP(BANKGRP)
DESCRIPTION(Demo help text file)
       DSNAME(MFI01.BANKDEMO.VSAM.BNKHELP) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) _FILETYPE(KSDS)
       _MAXRECLEN(00083) _MINRECLEN(00083) _KEYPOSITION(00001)
       _KEYLENGTH(00008) ADD(YES) BROWSE(YES) DELETE(YES) READ(YES)
       UPDATE(YES) JOURNAL(NO) JNLREAD(NONE) JNLSYNCREAD(NO)
       JNLUPDATE(NO) JNLADD(NONE) JNLSYNCWRITE(YES)
       RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO) BACKUPTYPE(STATIC)
DEFINE FILE(BNKTXN) GROUP(BANKGRP)
DESCRIPTION(Bank account transactions)
       DSNAME(MFI01V.MFIDEMO.BNKTXN) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) _FILETYPE(KSDS)
       _MAXRECLEN(00150) _MINRECLEN(00150) _KEYPOSITION(00015)
       _KEYLENGTH(00026) ADD(YES) BROWSE(YES) DELETE(YES) READ(YES)
       UPDATE(YES) JOURNAL(NO) JNLREAD(NONE) JNLSYNCREAD(NO)
       JNLUPDATE(NO) JNLADD(NONE) JNLSYNCWRITE(YES)
       RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO) BACKUPTYPE(STATIC)
DEFINE FILE(BNKTXN1) GROUP(BANKGRP)
DESCRIPTION(Bank account transactions secondary index)
       DSNAME(MFI01V.MFIDEMO.BNKTXN.AIX1) RLSACCESS(NO) LSRPOOLID(1)
       READINTEG(UNCOMMITTED) DSNSHARING(ALLREQS) STRINGS(1)
       STATUS(ENABLED) OPENTIME(FIRSTREF) DISPOSITION(SHARE)
       DATABUFFERS(2) INDEXBUFFERS(1) TABLE(NO) MAXNUMRECS(NOLIMIT)
       UPDATEMODEL(LOCKING) LOAD(NO) RECORDFORMAT(F) ADD(YES)
       BROWSE(YES) DELETE(YES) READ(YES) UPDATE(YES) JOURNAL(NO)
       JNLREAD(NONE) JNLSYNCREAD(NO) JNLUPDATE(NO) JNLADD(NONE)
       JNLSYNCWRITE(YES) RECOVERY(BACKOUTONLY) FWDRECOVLOG(NO)
       BACKUPTYPE(STATIC)
DEFINE PROGRAM(BBANK10P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK20P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK30P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK40P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK50P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK60P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK70P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK80P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(BBANK99P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK01P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK02P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK03P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK04P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK05P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK06P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK07P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK08P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK51P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DBANK52P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(DHELP01P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(MBANK10) GROUP(BANKGRP2)
       RELOAD(NO) RESIDENT(NO) USAGE(NORMAL) USELPACOPY(NO)
       STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW) EXECKEY(USER)
       CONCURRENCY(QUASIRENT) DYNAMIC(NO) EXECUTIONSET(FULLAPI) JVM(NO)
       HOTPOOL(NO)
DEFINE PROGRAM(SBANK00P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK10P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK20P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK30P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK40P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK50P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK60P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK70P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK80P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SBANK99P) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(SCUSTOMP) GROUP(BANKGRP2)
       LANGUAGE(COBOL) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE PROGRAM(STRAC00P) GROUP(BANKGRP2)
       RELOAD(NO) RESIDENT(NO) USAGE(NORMAL) USELPACOPY(NO)
       STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW) EXECKEY(USER)
       CONCURRENCY(QUASIRENT) DYNAMIC(NO) EXECUTIONSET(FULLAPI) JVM(NO)
       HOTPOOL(NO)
DEFINE PROGRAM(UDATECNV) GROUP(BANKGRP2)
       LANGUAGE(ASSEMBLER) RELOAD(NO) RESIDENT(NO) USAGE(NORMAL)
       USELPACOPY(NO) STATUS(ENABLED) CEDF(YES) DATALOCATION(BELOW)
       EXECKEY(USER) CONCURRENCY(QUASIRENT) DYNAMIC(NO)
       EXECUTIONSET(FULLAPI) JVM(NO) HOTPOOL(NO)
DEFINE TRANSACTION(BANK) GROUP(BANKGRP2)
DESCRIPTION(Demo system - BANK txn)
       PROGRAM(SBANK00P) TWASIZE(0) PROFILE(DFHCICST) STATUS(ENABLED)
       TASKDATALOC(BELOW) TASKDATAKEY(USER) STORAGECLEAR(NO)
       RUNAWAY(SYSTEM) SHUTDOWN(DISABLED) ISOLATE(YES) DYNAMIC(NO)
       ROUTABLE(NO) PRIORITY(0) TRANCLASS(DFHTCL00) DTIMOUT(NO)
       RESTART(NO) SPURGE(NO) TPURGE(NO) DUMP(NO) TRACE(YES)
       CONFDATA(NO) ACTION(BACKOUT) WAIT(YES) WAITTIME(0,0,0)
       RESSEC(NO) CMDSEC(NO)
DEFINE DB2ENTRY(BANK) GROUP(BANKGRP2)
       TRANSID(BANK) ACCOUNTREC(NONE) AUTHTYPE(USERID) DROLLBACK(YES)
       PLAN(BNKDEMO) PRIORITY(HIGH) PROTECTNUM(0) THREADLIMIT(0)
       THREADWAIT(POOL)
DEFINE DB2TRAN(BANK) GROUP(BANKGRP2)
       ENTRY(BANK) TRANSID(BANK)
