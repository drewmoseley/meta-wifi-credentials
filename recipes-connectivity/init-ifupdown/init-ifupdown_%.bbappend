# Ensure that wlan0 is set to auto
#

do_install_append () {
	echo 'auto wlan0' >> ${D}${sysconfdir}/network/interfaces
}
