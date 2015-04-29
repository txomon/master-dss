
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name ise146 -dir "/home/javier/proyectos/master/master-dss/final/ise146/planAhead_run_1" -part xc5vfx70tff1136-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/javier/proyectos/master/master-dss/final/ise146/sha256.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/javier/proyectos/master/master-dss/final/ise146} }
set_property target_constrs_file "sha256.ucf" [current_fileset -constrset]
add_files [list {sha256.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/javier/proyectos/master/master-dss/final/ise146/sha256.ncd"
if {[catch {read_twx -name results_1 -file "/home/javier/proyectos/master/master-dss/final/ise146/sha256.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/javier/proyectos/master/master-dss/final/ise146/sha256.twx\": $eInfo"
}
