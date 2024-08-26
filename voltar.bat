@echo off
echo Windows Registry Editor Version 5.00 > %temp%\mouse_settings.reg
echo. >> %temp%\mouse_settings.reg
echo [-HKEY_CURRENT_USER\Control Panel\Mouse] >> %temp%\mouse_settings.reg
echo [-HKEY_USERS\.DEFAULT\Control Panel\Mouse] >> %temp%\mouse_settings.reg
echo. >> %temp%\mouse_settings.reg
echo [HKEY_CURRENT_USER\Control Panel\Mouse] >> %temp%\mouse_settings.reg
echo "ActiveWindowTracking"=dword:00000000 >> %temp%\mouse_settings.reg
echo "Beep"="No" >> %temp%\mouse_settings.reg
echo "DoubleClickHeight"="4" >> %temp%\mouse_settings.reg
echo "DoubleClickSpeed"="500" >> %temp%\mouse_settings.reg
echo "DoubleClickWidth"="4" >> %temp%\mouse_settings.reg
echo "ExtendedSounds"="No" >> %temp%\mouse_settings.reg
echo "MouseHoverHeight"="4" >> %temp%\mouse_settings.reg
echo "MouseHoverTime"="400" >> %temp%\mouse_settings.reg
echo "MouseHoverWidth"="4" >> %temp%\mouse_settings.reg
echo "MouseSensitivity"="10" >> %temp%\mouse_settings.reg
echo "MouseSpeed"="1" >> %temp%\mouse_settings.reg
echo "MouseThreshold1"="6" >> %temp%\mouse_settings.reg
echo "MouseThreshold2"="10" >> %temp%\mouse_settings.reg
echo "MouseTrails"="0" >> %temp%\mouse_settings.reg
echo "SmoothMouseXCurve"=hex:00,00,00,00,00,00,00,00,15,6e,00,00,00,00,00,00,00,40,^
  01,00,00,00,00,00,29,dc,03,00,00,00,00,00,00,00,28,00,00,00,00,00 >> %temp%\mouse_settings.reg
echo "SmoothMouseYCurve"=hex:00,00,00,00,00,00,00,00,fd,11,01,00,00,00,00,00,00,24,^
  04,00,00,00,00,00,00,fc,12,00,00,00,00,00,00,c0,bb,01,00,00,00,00 >> %temp%\mouse_settings.reg
echo "SnapToDefaultButton"="0" >> %temp%\mouse_settings.reg
echo "SwapMouseButtons"="0" >> %temp%\mouse_settings.reg
echo. >> %temp%\mouse_settings.reg
echo [HKEY_USERS\.DEFAULT\Control Panel\Mouse] >> %temp%\mouse_settings.reg
echo "ActiveWindowTracking"=dword:00000000 >> %temp%\mouse_settings.reg
echo "DoubleClickHeight"="4" >> %temp%\mouse_settings.reg
echo "DoubleClickSpeed"="500" >> %temp%\mouse_settings.reg
echo "DoubleClickWidth"="4" >> %temp%\mouse_settings.reg
echo "MouseSensitivity"="10" >> %temp%\mouse_settings.reg
echo "MouseSpeed"="1" >> %temp%\mouse_settings.reg
echo "MouseThreshold1"="6" >> %temp%\mouse_settings.reg
echo "SmoothMouseXCurve"=hex:00,00,00,00,00,00,00,00,15,6e,00,00,00,00,00,00,00,40,^
  01,00,00,00,00,00,29,dc,03,00,00,00,00,00,00,00,28,00,00,00,00,00 >> %temp%\mouse_settings.reg
echo "SmoothMouseYCurve"=hex:00,00,00,00,00,00,00,00,b8,5e,01,00,00,00,00,00,cd,4c,^
  05,00,00,00,00,00,cd,4c,18,00,00,00,00,00,00,00,38,02,00,00,00,00 >> %temp%\mouse_settings.reg
echo "MouseThreshold2"="10" >> %temp%\mouse_settings.reg
echo "SnapToDefaultButton"="0" >> %temp%\mouse_settings.reg
echo "SwapMouseButtons"="0" >> %temp%\mouse_settings.reg
echo "DockTargetMouseWidth"="1" >> %temp%\mouse_settings.reg
echo "DockTargetPenWidth"="30" >> %temp%\mouse_settings.reg
echo "DockTargetMouseDragOutWidth"="20" >> %temp%\mouse_settings.reg
echo "DockTargetPenDragOutWidth"="30" >> %temp%\mouse_settings.reg
echo "DockTargetMouseSideMoveWidth"="50" >> %temp%\mouse_settings.reg
echo "DockTargetPenSideMoveWidth"="50" >> %temp%\mouse_settings.reg

regedit.exe /s %temp%\mouse_settings.reg
del %temp%\mouse_settings.reg
