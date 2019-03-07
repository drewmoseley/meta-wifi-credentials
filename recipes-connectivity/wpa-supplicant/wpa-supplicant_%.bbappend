FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://scale-demo.conf"
do_install_append () {
    if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
        cat ${WORKDIR}/scale-demo.conf >>  ${D}${sysconfdir}/wpa_supplicant.conf
    fi
}
