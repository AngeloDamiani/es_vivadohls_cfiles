# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name arr_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_0 \
    op interface \
    ports { arr_0_i { I 64 vector } arr_0_o { O 64 vector } arr_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name arr_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_1 \
    op interface \
    ports { arr_1_i { I 64 vector } arr_1_o { O 64 vector } arr_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name arr_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_2 \
    op interface \
    ports { arr_2_i { I 64 vector } arr_2_o { O 64 vector } arr_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name arr_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_3 \
    op interface \
    ports { arr_3_i { I 64 vector } arr_3_o { O 64 vector } arr_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name arr_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_4 \
    op interface \
    ports { arr_4_i { I 64 vector } arr_4_o { O 64 vector } arr_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name arr_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_5 \
    op interface \
    ports { arr_5_i { I 64 vector } arr_5_o { O 64 vector } arr_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name arr_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_6 \
    op interface \
    ports { arr_6_i { I 64 vector } arr_6_o { O 64 vector } arr_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name arr_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_7 \
    op interface \
    ports { arr_7_i { I 64 vector } arr_7_o { O 64 vector } arr_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name arr_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_8 \
    op interface \
    ports { arr_8_i { I 64 vector } arr_8_o { O 64 vector } arr_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name arr_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_9 \
    op interface \
    ports { arr_9_i { I 64 vector } arr_9_o { O 64 vector } arr_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


