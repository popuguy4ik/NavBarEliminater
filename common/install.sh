ui_print " Device: $MODEL " && ui_print " Codename: $CODENAME " && ui_print " Android Version SDK: $SDK "
ui_print " "

if [ $NAME ]; then
$OTVAL
fi

if [ $CODE ]; then
$OTVAL
fi

if [ $REGION ]; then
$OTVAL
fi

if [ ! $API -ge "29" ]; then
abort "This Module for Android Q and R only!"
fi

unzip -oj "$ZIPFILE" 'flag_value.xml' -d '/sdcard'
ui_print " "&& ui_print "   Making ur NavBar looks better. "
rm -rf /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
cp '/sdcard/flag_value.xml' '/data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml'
rm -rf /sdcard/flag_value.xml
chmod 0644 /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
am force-stop com.google.android.inputmethod.latin
ui_print " "
ui_print "  And don't forget to sub to "
ui_print "  my channel in telegram : "
ui_print "  @oh_no_cr1nge "
ui_print "  it give me motivation "
ui_print "  to make more modules in future. "
ui_print " "

