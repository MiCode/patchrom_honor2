@echo off
echo.
echo �ػ����� �������� ���ӵ����Խ���fastbootģʽ����������
echo.
echo  �Ƿ�ˢ��data.img
echo ��ע�⡿
echo       ˢ��data.img�����DATA�û����ݶ�ʧ������ǰ���ñ���
echo       ��һ��ˢMIUI��ҪˢдDATA����������������������֮��ɲ�ˢ
choice /m "Y-ˢд  N-��ˢд C-�˳�ˢ��" /c:YNC
if errorlevel 3 goto cancel
if errorlevel 2 goto flash_system
if errorlevel 1 goto flash_userdata

:flash_userdata
echo.
echo ˢ�� data.img ...
fastboot erase userdata >nul
fastboot flash userdata data.img >nul

:flash_system
echo.
echo ˢ�� system.img ...
fastboot flash system system.img >nul

:flash_boot
echo.
echo ˢ�� boot(ics16.ief) ...
fastboot flash boot ics16.elf >nul

:flash_done
echo.
echo ˢ�����
goto end

:cancel
echo.
echo ����ȡ��ˢ��

:end
echo ��������ֻ����Զ�����,��γ�������,�ȴ�����
pause >nul
fastboot reboot >nul