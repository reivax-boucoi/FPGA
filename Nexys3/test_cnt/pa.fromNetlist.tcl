
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name test_cnt -dir "/media/user/Data/Documents/FPGA/Nexys3/test_cnt/planAhead_run_2" -part xc6slx16csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/media/user/Data/Documents/FPGA/Nexys3/test_cnt/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/media/user/Data/Documents/FPGA/Nexys3/test_cnt} }
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
