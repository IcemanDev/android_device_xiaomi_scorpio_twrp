
workdir=$(pwd)
# file root
if [[ -d "$workdir"/device/xiaomi/scorpio/file-root ]]; then
if [[ -d out/target/product/scorpio/recovery/root/twres ]]; then 
	rm -rf "$workdir"/device/xiaomi/scorpio/file-root/portrait.xml ;
	rm -rf "$workdir"/device/xiaomi/scorpio/file-root/ui.xml ;
	rm -rf "$workdir"/out/target/product/scorpio/recovery/root/twres ; 
	rm -rf "$workdir"/out/target/product/scorpio/recovery/root/sbin/iceroot ; 
fi
cp -rf "$workdir"/bootable/recovery/gui/theme/common/portrait.xml "$workdir"/device/xiaomi/scorpio/file-root/portrait.xml

sed -i 's/<listitem name="{@reload_theme_btn=Reload Theme}">/ \
<!-- CREAZIONE ICEMAN BUTTON SUPERSU--> \
			<listitem name="ROOT \/ UNROOT">  \
				<actions> \
					<action function="queueclear"\/> \
					<action function="set">tw_selectimage=0<\/action> \
					<action function="page">flash_confirm_ICEMAN<\/action> \
					<action function="set">tw_zip_location=\/sbin\/iceroot<\/action> \
				<\/actions> \
			<\/listitem> \
<!-- FINE CREAZIONE ICEMAN BUTTON SUPERSU--> \
			    <listitem name="{@reload_theme_btn=Reload Theme}">/g' "$workdir"/device/xiaomi/scorpio/file-root/portrait.xml
sed -i '/^	<\/pages>$/,/^<\/recovery>$/d' "$workdir"/device/xiaomi/scorpio/file-root/portrait.xml
cat "$workdir"/device/xiaomi/scorpio/file-root/patch_portrait_normal >> "$workdir"/device/xiaomi/scorpio/file-root/portrait.xml

cp -rf "$workdir"/bootable/recovery/gui/theme/portrait_hdpi/ui.xml "$workdir"/device/xiaomi/scorpio/file-root/ui.xml
sed -i 's/<xmlfile name="portrait.xml"\/>/<xmlfile name="portrait.ice"\/>/g' "$workdir"/device/xiaomi/scorpio/file-root/ui.xml
fi
