$OFFLISTING
$if NOT set solve_with $SET solve_with CBC
$SET run_name DTU_%COMETS_SCENARIO%
$hiddenCall gams SCENARIO.RUN LP %SOLVE_WITH% idir1 source idir2 model idir3 scenarios --comets_scenario=%COMETS_SCENARIO% --run_name=%RUN_NAME% ps=0 gdx=%RUN_NAME% O=%RUN_NAME%.lst

