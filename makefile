#
# Makefile for i9100
#

# The out path for jars and apks from MIUI
# 	defalut value is false, to use the jars and apks under miui/
# 	could be set as true, to use the jars and apks under android build out.
local-use-android-out := true

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := ZTE-N880E_2.3_miui-Hundan.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := MediaProvider Settings TaskManager SoundRecorder NumberLocator Phone \
FmRadio CallFilter Gallery3D

local-miui-modified-apps := Launcher2 ContactsProvider TelephonyProvider
 
# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     := DownloadProviderUi DownloadProvider \
Music Notes SideKick ThemeManager TelocationProvider Mms Contacts

# All apps need to be removed from original ZIP file
local-remove-apps   := BookMark CalendarWidget MusicWidget NotesPad \
WeatherTV_N880E WeatherWidget Email Backup PowerManager \
Camera alarming VideoPlayer SuperuserElite SelfRegistSms SystemUI Rebooter QuickSearchBox

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Replace updater-script
	cp other/updater-script $(ZIP_DIR)/META-INF/com/google/android/updater-script
	@echo Replace bootanimation shutdownanimation
	cp other/bootanimation.zip $(ZIP_DIR)/system/media/
	cp other/shutdownanimation.zip $(ZIP_DIR)/system/media/
	@echo Replace apk
	cp other/apks/DeskClock.apk $(ZIP_DIR)/system/app/
	cp other/apks/MIUICamera.apk $(ZIP_DIR)/system/app/
	cp other/apks/MIUICompass.apk $(ZIP_DIR)/system/app/
	cp other/apks/MIUIFileExplorer.apk $(ZIP_DIR)/system/app/
	cp other/apks/SpareParts.apk $(ZIP_DIR)/system/app/
	cp other/apks/CallFilter.apk $(ZIP_DIR)/system/app/
	cp other/apks/FmRadio.apk $(ZIP_DIR)/system/app/
	cp other/apks/Gallery3D.apk $(ZIP_DIR)/system/app/
	cp other/apks/MediaProvider.apk $(ZIP_DIR)/system/app/
	cp other/apks/SoundRecorder.apk $(ZIP_DIR)/system/app/
	cp other/apks/TaskManager.apk $(ZIP_DIR)/system/app/
	cp other/apks/TelephonyProvider.apk $(ZIP_DIR)/system/app/
	cp other/apks/AicBootFix.apk $(ZIP_DIR)/system/app/
	@echo Replace superuser.apk
	cp other/su $(ZIP_DIR)/system/xbin/su
	cp other/Superuser.apk $(ZIP_DIR)/system/app/
	cp other/build.prop $(ZIP_DIR)/system/bin/


local-test:
	#rm -f n880e_2.3.6_miui.zip
	#cp .build/n880e_2.3.6_miui.zip .
