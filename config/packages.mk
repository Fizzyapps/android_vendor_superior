# Copyright (C) 2018-23 The SuperiorOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Required packages
PRODUCT_PACKAGES += \
    Aperture \
    DocumentsUI \
    Etar \
    BatteryStatsViewer \
    GameSpace \
    LatinIME \
    Launcher3QuickStep \
    messaging \
    OmniJaws \
    Stk \
    ThemePicker \
    ThemesStub \
    RepainterServicePriv

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/superior/overlay \
    vendor/superior/overlay/no-rro

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/superior/overlay/common \
    vendor/superior/overlay/no-rro

# Include Superior LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/superior/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/superior/overlay/dictionaries

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images \
    product_charger_res_images_vendor

# Extra tools in Superior
PRODUCT_PACKAGES += \
    curl \
    getcap \
    setcap

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/curl \
    system/bin/getcap \
    system/bin/setcap

ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/procmem
endif

# Face Unlock
PRODUCT_PACKAGES += \
    FaceUnlock

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.face.sense_service=true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml

# Lineage Hardware
PRODUCT_COPY_FILES += \
    vendor/superior/config/permissions/privapp-permissions-lineagehw.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-lineagehw.xml \
    vendor/superior/config/permissions/org.lineageos.health.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.health.xml

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/prebuilts/common/etc/sensitive_pn.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sensitive_pn.xml
    
# CarrierSettings, replace CarrierConfig
PRODUCT_PACKAGES += \
    CarrierSettings

#
# Carrier configs by Google, parsed by CarrierSettings
#
# Carrier List
PRODUCT_PACKAGES += \
    carrier_list.pb

# Defaults
PRODUCT_PACKAGES += \
    default.pb

# Carriers Databases
PRODUCT_PACKAGES += \
    1and1_de.pb \
    2degrees_nz.pb \
    a1_at.pb \
    a1_si.pb \
    ahamo_jp.pb \
    airtel_in.pb \
    ais_th.pb \
    altice_us.pb \
    apt_tw.pb \
    asda_gb.pb \
    assurance_us.pb \
    astca_as.pb \
    att5g_us.pb \
    att5gsa_us.pb \
    att_us.pb \
    attmvnos_us.pb \
    base_be.pb \
    bell_ca.pb \
    bluegrass_us.pb \
    boost_us.pb \
    boosttmo_us.pb \
    bouygues_fr.pb \
    btb_gb.pb \
    btc_gb.pb \
    carolinawest_us.pb \
    celcom_my.pb \
    cellcom_us.pb \
    cellcommno_us.pb \
    celluarone_us.pb \
    chatr_ca.pb \
    chinamobile_hk.pb \
    cht_tw.pb \
    cityfone_ca.pb \
    claro_pr.pb \
    congstar_de.pb \
    consumercellularatt_us.pb \
    consumercellulartmo_us.pb \
    coppervalley_us.pb \
    coriolis_fr.pb \
    cox_us.pb \
    cricket5g_us.pb \
    cricket_us.pb \
    cspire_nl.pb \
    cspire_us.pb \
    digi_hu.pb \
    digi_my.pb \
    digi_ro.pb \
    dishatt_us.pb \
    dito_ph.pb \
    dna_fi.pb \
    docomo_jp.pb \
    docomomvno_jp.pb \
    du_ae.pb \
    eastlink_ca.pb \
    ee_gb.pb \
    eir_ie.pb \
    elisa1_fi.pb \
    elisa2_fi.pb \
    enreach_nl.pb \
    eplus_de.pb \
    esn_gb.pb \
    euskaltel_es.pb \
    evolve_us.pb \
    fastweb_it.pb \
    fet_tw.pb \
    fi_at.pb \
    fi_us.pb \
    fido_ca.pb \
    firstnet_us.pb \
    firstnetpacific2_us.pb \
    firstnetpacific_us.pb \
    fizz_ca.pb \
    free_fr.pb \
    freedommobile_ca.pb \
    gamma_gb.pb \
    gci_us.pb \
    gibtel_gi.pb \
    giga_sg.pb \
    globe_ph.pb \
    h3_at.pb \
    h3_gb.pb \
    h3_ie.pb \
    h3_se.pb \
    h3g27202_ie.pb \
    halebop_se.pb \
    homobile_it.pb \
    hotmobile_il.pb \
    ice_no.pb \
    idea_in.pb \
    idmobile_gb.pb \
    iliad_it.pb \
    jazztel_es.pb \
    kddi_jp.pb \
    kddimvno_jp.pb \
    kena_it.pb \
    koodo_ca.pb \
    kpn_nl.pb \
    liberty_pr.pb \
    linemo_jp.pb \
    luckymobile_ca.pb \
    m1_sg.pb \
    manxcontract_im.pb \
    manxprepaid_im.pb \
    maxis_my.pb \
    meo_pt.pb \
    metropcs_us.pb \
    mobily_sa.pb \
    movistar_es.pb \
    nextech_us.pb \
    nos_pt.pb \
    o2_cz.pb \
    o2_de.pb \
    o2_sk.pb \
    o2postpaid_gb.pb \
    o2prepaid_de.pb \
    o2prepaid_gb.pb \
    onecall_no.pb \
    ooredoo_qa.pb \
    optus_au.pb \
    orange_be.pb \
    orange_es.pb \
    orange_fr.pb \
    orange_gp.pb \
    orange_lu.pb \
    orange_pl.pb \
    orange_re.pb \
    orange_ro.pb \
    orange_sk.pb \
    partner_il.pb \
    pcmobilebell_ca.pb \
    pelephone_il.pb \
    pepephone_es.pb \
    play_pl.pb \
    plus_pl.pb \
    post_lu.pb \
    povo_jp.pb \
    proximus_be.pb \
    publicmobile_ca.pb \
    rakuten_jp.pb \
    redpocketatt_us.pb \
    redpockettmo_us.pb \
    rjio_in.pb \
    rogers5g_ca.pb \
    rogers_ca.pb \
    salt_ch.pb \
    sasktel_ca.pb \
    sfr_fr.pb \
    shaw_ca.pb \
    simba_sg.pb \
    simple_us.pb \
    singtel_sg.pb \
    skinny_nz.pb \
    sky_gb.pb \
    smartone_hk.pb \
    smarty_gb.pb \
    softbank_jp.pb \
    solomobile_ca.pb \
    spark_nz.pb \
    spectrum_us.pb \
    sprint_us.pb \
    sprintprepaid_us.pb \
    sprintwholesale_us.pb \
    starhub_sg.pb \
    stc_kw.pb \
    stc_sa.pb \
    strata_us.pb \
    sunrise_ch.pb \
    swisscom_ch.pb \
    swisscom_li.pb \
    talkmobile_gb.pb \
    tango_us.pb \
    tbaytel_ca.pb \
    tchibo_de.pb \
    tdc_dk.pb \
    tele2_se.pb \
    telekom_de.pb \
    telekom_gr.pb \
    telekom_hr.pb \
    telekom_hu.pb \
    telekom_pl.pb \
    telekom_ro.pb \
    telekom_si.pb \
    telekom_sk.pb \
    telemach_si.pb \
    telenet_be.pb \
    telenor_dk.pb \
    telenor_no.pb \
    telenor_se.pb \
    telia_dk.pb \
    telia_ee.pb \
    telia_fi.pb \
    telia_lt.pb \
    telia_no.pb \
    telia_se.pb \
    telstra_au.pb \
    telus_ca.pb \
    tesco_gb.pb \
    three_dk.pb \
    tim_it.pb \
    tmobile_at.pb \
    tmobile_cz.pb \
    tmobile_nl.pb \
    tmobile_us.pb \
    tmomvno_nl.pb \
    tmomvno_us.pb \
    tracfoneatt_us.pb \
    tracfonetmo_us.pb \
    tracfoneverizon_us.pb \
    truemove_th.pb \
    tstar_tw.pb \
    twm_tw.pb \
    u264a_ca.pb \
    u264a_us.pb \
    u264ao_at.pb \
    u264ap_at.pb \
    ultra_us.pb \
    umobile_my.pb \
    unifi_my.pb \
    uqmobile5gsa_jp.pb \
    uqmobile_jp.pb \
    uscc_us.pb \
    verizon_us.pb \
    verymobile_it.pb \
    viaero_us.pb \
    videotron_ca.pb \
    vimla_se.pb \
    virgin_ca.pb \
    virgin_gb.pb \
    virgin_us.pb \
    visible_us.pb \
    visiblev_us.pb \
    vodafone_au.pb \
    vodafone_cz.pb \
    vodafone_de.pb \
    vodafone_es.pb \
    vodafone_gb.pb \
    vodafone_hu.pb \
    vodafone_ie.pb \
    vodafone_in.pb \
    vodafone_it.pb \
    vodafone_nl.pb \
    vodafone_nz.pb \
    vodafone_pt.pb \
    vodafone_ro.pb \
    vodafone_tr.pb \
    windtre_it.pb \
    xfinity_us.pb \
    yes_my.pb \
    yettel_hu.pb \
    yoigo_es.pb \
    zain_kw.pb \
    zeop_re.pb

# Other countries
PRODUCT_PACKAGES += \
    others.pb

# Disable mobile data in roaming by default.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false

# Include Carrier Runtime Configuration
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/superior/CarrierSettings/overlay
