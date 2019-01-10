
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name didact_hdl -dir "E:/SEMB_2018_2019/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/SEMB_2018_2019/didact_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/SEMB_2018_2019} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "didact_top.ucf" [current_fileset -constrset]
add_files [list {didact_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
