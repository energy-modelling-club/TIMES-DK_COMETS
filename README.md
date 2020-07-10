TIMES-DK model developed during the COMETS project for analysing the Danish energy system

This assesment includes the climate discussions set out during the summer of 2019 and shown on https://klimaaftalen2019.tokni.com/

To obtain the model, including the TIMES source code, run the following command:
> git clone --recurse-submodules https://github.com/energy-modelling-club/TIMES-DK_COMETS

To run a specific scenario (e.g. Frozen_policy_scenarie) execute the following command from root:
> GAMS runmodel --comets_scenario=Frozen_policy_scenarie

The model is solved using CBC by default, adjust the command to solve it e.g., with CPLEX:
> GAMS runmodel --comets_scenario=Frozen_policy_scenarie --solve_with=CPLEX
