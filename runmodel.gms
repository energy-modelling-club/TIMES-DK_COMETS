$OFFLISTING
$SET run_name DTU_%COMETS_SCENARIO%
$hiddenCall gams SCENARIO.RUN idir1 source idir2 model idir3 scenarios --comets_scenario=%COMETS_SCENARIO% --run_name=%RUN_NAME% gdx=%RUN_NAME% O=%RUN_NAME%.lst

