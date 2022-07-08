@echo off
color 0a

REM Count how many cores computer has, then subtract one so it doesn't lock the system up
SET /a CORE=%NUMBER_OF_PROCESSORS%-1

REM Finding where the build programs are.
REM SET CurrentDirectory=%~dp0
REM PUSHD %CD%
REM CD..
REM CD..
SET GAME_DIR=H:\SteamLibrary\steamapps\common\Hunt Down The Freeman
REM SET GAME_DIR=%CD%
REM POPD

REM Drag and drop file
@attrib -r %1

REM Setting up the VProject
set VPROJECT=%GAME_DIR%\hdtf

REM CLS
REM ECHO.
REM ECHO Verify these pathes are correct.
REM echo VPROJECT:            %VPROJECT%
REM echo Map SourcH:          %CD%
REM echo Game Directory:      %GAME_DIR%
REM PING localhost>nul
REM CLS

color 01
ECHO.
ECHO.
ECHO.
ECHO VVVVVVVV           VVVVVVVVBBBBBBBBBBBBBBBBB      SSSSSSSSSSSSSSS PPPPPPPPPPPPPPPPP   
ECHO V::::::V           V::::::VB::::::::::::::::B   SS:::::::::::::::SP::::::::::::::::P  
ECHO V::::::V           V::::::VB::::::BBBBBB:::::B S:::::SSSSSS::::::SP::::::PPPPPP:::::P 
ECHO V::::::V           V::::::VBB:::::B     B:::::BS:::::S     SSSSSSSPP:::::P     P:::::P
ECHO  V:::::V           V:::::V   B::::B     B:::::BS:::::S              P::::P     P:::::P
ECHO   V:::::V         V:::::V    B::::B     B:::::BS:::::S              P::::P     P:::::P
ECHO    V:::::V       V:::::V     B::::BBBBBB:::::B  S::::SSSS           P::::PPPPPP:::::P 
ECHO     V:::::V     V:::::V      B:::::::::::::BB    SS::::::SSSSS      P:::::::::::::PP  
ECHO      V:::::V   V:::::V       B::::BBBBBB:::::B     SSS::::::::SS    P::::PPPPPPPPP    
ECHO       V:::::V V:::::V        B::::B     B:::::B       SSSSSS::::S   P::::P            
ECHO        V:::::V:::::V         B::::B     B:::::B            S:::::S  P::::P            
ECHO         V:::::::::V          B::::B     B:::::B            S:::::S  P::::P            
ECHO          V:::::::V         BB:::::BBBBBB::::::BSSSSSSS     S:::::SPP::::::PP          
ECHO           V:::::V          B:::::::::::::::::B S::::::SSSSSS:::::SP::::::::P          
ECHO            V:::V           B::::::::::::::::B  S:::::::::::::::SS P::::::::P          
ECHO             VVV            BBBBBBBBBBBBBBBBB    SSSSSSSSSSSSSSS   PPPPPPPPPP          
ECHO.
ECHO.
ECHO.
title %1 - VBSP
"%GAME_DIR%\bin\vbsp.exe" -nodefaultcubemap %1

color 05
ECHO.
ECHO.
ECHO.
ECHO VVVVVVVV           VVVVVVVVVVVVVVVV           VVVVVVVVIIIIIIIIII   SSSSSSSSSSSSSSS 
ECHO V::::::V           V::::::VV::::::V           V::::::VI::::::::I SS:::::::::::::::S
ECHO V::::::V           V::::::VV::::::V           V::::::VI::::::::IS:::::SSSSSS::::::S
ECHO V::::::V           V::::::VV::::::V           V::::::VII::::::IIS:::::S     SSSSSSS
ECHO  V:::::V           V:::::V  V:::::V           V:::::V   I::::I  S:::::S            
ECHO   V:::::V         V:::::V    V:::::V         V:::::V    I::::I  S:::::S            
ECHO    V:::::V       V:::::V      V:::::V       V:::::V     I::::I   S::::SSSS         
ECHO     V:::::V     V:::::V        V:::::V     V:::::V      I::::I    SS::::::SSSSS    
ECHO      V:::::V   V:::::V          V:::::V   V:::::V       I::::I      SSS::::::::SS  
ECHO       V:::::V V:::::V            V:::::V V:::::V        I::::I         SSSSSS::::S 
ECHO        V:::::V:::::V              V:::::V:::::V         I::::I              S:::::S
ECHO         V:::::::::V                V:::::::::V          I::::I              S:::::S
ECHO          V:::::::V                  V:::::::V         II::::::IISSSSSSS     S:::::S
ECHO           V:::::V                    V:::::V          I::::::::IS::::::SSSSSS:::::S
ECHO            V:::V                      V:::V           I::::::::IS:::::::::::::::SS 
ECHO             VVV                        VVV            IIIIIIIIII SSSSSSSSSSSSSSS   
ECHO.
ECHO.
ECHO.
title %1 - VVIS
"%GAME_DIR%\bin\vvis.exe" -fast -threads %CORE% %2 %1

color 04
ECHO.
ECHO.
ECHO.
ECHO VVVVVVVV           VVVVVVVVRRRRRRRRRRRRRRRRR                  AAA               DDDDDDDDDDDDD        
ECHO V::::::V           V::::::VR::::::::::::::::R                A:::A              D::::::::::::DDD     
ECHO V::::::V           V::::::VR::::::RRRRRR:::::R              A:::::A             D:::::::::::::::DD   
ECHO V::::::V           V::::::VRR:::::R     R:::::R            A:::::::A            DDD:::::DDDDD:::::D  
ECHO  V:::::V           V:::::V   R::::R     R:::::R           A:::::::::A             D:::::D    D:::::D 
ECHO   V:::::V         V:::::V    R::::R     R:::::R          A:::::A:::::A            D:::::D     D:::::D
ECHO    V:::::V       V:::::V     R::::RRRRRR:::::R          A:::::A A:::::A           D:::::D     D:::::D
ECHO     V:::::V     V:::::V      R:::::::::::::RR          A:::::A   A:::::A          D:::::D     D:::::D
ECHO      V:::::V   V:::::V       R::::RRRRRR:::::R        A:::::A     A:::::A         D:::::D     D:::::D
ECHO       V:::::V V:::::V        R::::R     R:::::R      A:::::AAAAAAAAA:::::A        D:::::D     D:::::D
ECHO        V:::::V:::::V         R::::R     R:::::R     A:::::::::::::::::::::A       D:::::D     D:::::D
ECHO         V:::::::::V          R::::R     R:::::R    A:::::AAAAAAAAAAAAA:::::A      D:::::D    D:::::D 
ECHO          V:::::::V         RR:::::R     R:::::R   A:::::A             A:::::A   DDD:::::DDDDD:::::D  
ECHO           V:::::V          R::::::R     R:::::R  A:::::A               A:::::A  D:::::::::::::::DD   
ECHO            V:::V           R::::::R     R:::::R A:::::A                 A:::::A D::::::::::::DDD     
ECHO             VVV            RRRRRRRR     RRRRRRRAAAAAAA                   AAAAAAADDDDDDDDDDDDD        
ECHO.
ECHO.
ECHO.
"%GAME_DIR%\bin\vrad.exe" -ldr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% %1
"%GAME_DIR%\bin\vrad.exe" -hdr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% %1

color 02
del /f *.prt
del /f *.vmx
del /f *.ini
exit