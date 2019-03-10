FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://scale-demo.conf"
do_install_append () {
    cat ${WORKDIR}/scale-demo.conf >>  ${D}${sysconfdir}/wpa_supplicant.conf
}
