$OFFLISTING
$if NOT set solve_with $SET solve_with CBC
$if NOT set run_name $SET run_name DTU_%COMETS_SCENARIO%
$hiddenCall gams SCENARIO.RUN parmfile=gams.opt LP=%SOLVE_WITH% --comets_scenario=%COMETS_SCENARIO% --run_name=%RUN_NAME% gdx=%RUN_NAME% O=%RUN_NAME%.lst
$terminate
