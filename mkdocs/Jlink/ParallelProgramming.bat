@ECHO OFF
REM
REM List of jobs
REM Serial no. J-Flash project file Data file
set aJobs[0]=1015000001 Path\To\ProjectFile.jflash Path\To\DataFile.hex
set aJobs[1]=1015000002 Path\To\ProjectFile.jflash Path\To\DataFile.hex
set aJobs[2]=1015000003 Path\To\ProjectFile.jflash Path\To\DataFile.hex
REM set aJobs[3]=1015000004 Path\To\ProjectFile.jflash Path\To\DataFile.hex
REM set aJobs[4]=1015000005 Path\To\ProjectFile.jflash Path\To\DataFile.hex
REM set aJobs[5]=1015000006 Path\To\ProjectFile.jflash Path\To\DataFile.hex
REM set aJobs[6]=1015000007 Path\To\ProjectFile.jflash Path\To\DataFile.hex
REM [...]
REM
REM
REM :Main
REM
REM Function description
REM Entry point for the batch script
REM Starts multiple instances of J-Flash and waits until all of them have exited
REM
:Main
  REM
  REM Enable the use of variables inside the for loop by using delayed variable expansion
  REM
  setlocal ENABLEDELAYEDEXPANSION
  REM
  REM In order to wait for all processes to finish, lock files are used which are located at %temp%
  REM Each process blocks its corresponding lock file as long as the process is alive.
  REM
  set "lock=%temp%\wait!random!.lock"
  echo Starting J-Flash...
  set /a Cnt=0
  :_JobStartLoop
  if defined aJobs[%Cnt%] (
    start "" 9>"!lock!%Cnt%" StartJFlash.bat %%aJobs[%Cnt%]%%
    set /a "Cnt+=1"
  GOTO :_JobStartLoop
  )
  echo Waiting for J-Flash to finish...
  REM
  REM Wait for processes to finish before continuing
  REM
  set /a Cnt=0
  :_JobWaitLoop
  if defined aJobs[%Cnt%] (
    call :WaitForUnlock !lock!%Cnt% >nul 2>&1
    set /a "Cnt+=1"
    GOTO :_JobWaitLoop
  )
  REM
  REM Delete temporary lock files
  REM
  del "!lock!*"
  echo Done.
  pause
  exit /b

REM
REM :WaitForUnlock
REM
REM Function description
REM This function waits for the passed lock file to be accessible
REM
REM Parameters
REM %~1 Lock file path
REM
:WaitForUnlock
  goto :Start
  :Retry
  REM
  REM This is a ping to the IPv6 local loopback address which is used to burn some time waiting for J-Flash to finish.
  REM There is a 1 sec delay between two pings, so /n 2 generates a sleep for at least 1 sec.
  REM
  1>nul 2>nul ping /n 2 ::1
  :Start
  call 9>"%~1" || goto Retry
  exit /b