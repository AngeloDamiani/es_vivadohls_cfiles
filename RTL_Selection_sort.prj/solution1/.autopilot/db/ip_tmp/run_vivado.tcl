create_project prj -part xc7z020clg484-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
source "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/syn/vhdl/selection_sort_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips selection_sort_ap_fcmp_0_no_dsp_32]]
}