FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PACKAGECONFIG_append = " networkd resolved "

SRC_URI += "file://wlan.network"

FILES_${PN} += "${sysconfdir}/systemd/network/wlan.network"

do_install_append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network
}
