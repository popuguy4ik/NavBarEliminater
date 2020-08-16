# переменнные
SPO="rm -rf $MODPATH/system/product/overlay"
SVO="rm -rf $MODPATH/system/vendor/overlay"
NAME=$(getprop ro.miui.ui.version.name)
CODE=$(getprop ro.miui.ui.version.code)
REGION=$(getprop ro.miui.region)
MODEL=$(getprop ro.product.system.model)
CODENAME=$(getprop ro.product.system.device)
SDK=$(getprop ro.system.build.version.sdk)
CODENAME2=$(getprop ro.build.version.codename)
ui_print " Device: $MODEL " && ui_print " Codename: $CODENAME " && ui_print " Android Version SDK: $SDK "
ui_print " "
# проверка на говноюай

if [ $NAME ]; then
ui_print " This module doesn't support ShitUI!" && abort " Aborting..."
fi

if [ $CODE ]; then
ui_print " This module doesn't support ShitUI!" && abort " Aborting..."
fi

if [ $REGION ]; then
ui_print " This module doesn't support ShitUI!" && abort " Aborting..."
fi

# ПРОВЕРКА НА 10/11 АНДРОИД

if [ ! $API -ge "29" ]; then
abort "This Module for Android Q and R only!"
fi

# уменьшитель навбара в гбоарде
unzip -oj "$ZIPFILE" 'flag_value.xml' -d '/sdcard'
ui_print " "
ui_print "   Making ur NavBar looks better. "
rm -rf /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
cp '/sdcard/flag_value.xml' '/data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml'
chmod 0644 /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
am force-stop com.google.android.inputmethod.latin
ui_print " "
ui_print "  And don't forget to sub to "
ui_print "  my channel in telegram : "
ui_print "  @oh_no_cr1nge "
ui_print "  it will give me motivation "
ui_print "  to make more modules in future. "
ui_print " "

