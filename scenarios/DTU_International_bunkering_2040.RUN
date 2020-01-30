$TITLE  TIMES -- VERSION 4.1.0
OPTION RESLIM=50000, PROFILE=1, SOLVEOPT=REPLACE;
OPTION ITERLIM=999999, LIMROW=0, LIMCOL=0, SOLPRINT=OFF;

option LP=cplex;

*--If you want to use an optimizer other than cplex/xpress, enter it here:
*OPTION LP=MyOptimizer;

$OFFLISTING
*$ONLISTING

* activate validation to force VAR_CAP/COMPRD
$SET VALIDATE 'NO'
* reduction of equation system
$SET REDUCE   'YES'
*--------------------------------------------------------------*
* BATINCLUDE calls should all be with lower case file names!!! *
*--------------------------------------------------------------*

* initialize the environment variables
$ SET DSCAUTO YES 
$   SET VDA YES 
$   SET DEBUG                          'NO'
$   SET DUMPSOL                        'NO'
$   SET SOLVE_NOW                      'YES'
$   SET MODEL_NAME                     'TIMES'
$   IF DECLARED REG      $SET STARTRUN 'RESTART'
$   IF NOT DECLARED REG  $SET STARTRUN 'SCRATCH'
$SET XTQA YES
* VAR_UC being set so that non-binding constraints appear in results
$SET VAR_UC YES 
 OPTION BRATIO=1;
$ SET OBJ AUTO
$ SET OBLONG YES
$SET DAMAGE NO
$ SET STAGES NO
$SET SOLVEDA 'YES'
$SET DATAGDX YES

* merge declarations & data
$   ONMULTI

* the times-slices MUST come 1st to ensure ordering OK
$BATINCLUDE dtu_international_bunkering_2040_ts.dd
 

* perform fixed declarations
$SET BOTIME 1970
$BATINCLUDE initsys.mod

* declare the (system/user) empties
$   BATINCLUDE initmty.mod
*$   BATINCLUDE initmty.mod DSC
$IF NOT DECLARED REG_BNDCST $Abort "You need to use TIMES v2.3.1 or higher"

$BATINCLUDE base.dd
$BATINCLUDE elc_techs.dd
$BATINCLUDE elc_plants2020.dd
$BATINCLUDE elc_importexport.dd
$BATINCLUDE elc_dh-pipes.dd
$BATINCLUDE ind_techs.dd
$BATINCLUDE res_app_techs.dd
$BATINCLUDE res_techs.dd
$BATINCLUDE res_heatsav.dd
$BATINCLUDE sup_h2_chain.dd
$BATINCLUDE sup_bioref.dd
$BATINCLUDE sup_biogasplants.dd
$BATINCLUDE tra_techs.dd
$BATINCLUDE elc_excessheat.dd
$BATINCLUDE ldc_wasteheat.dd
$BATINCLUDE elc_trade.dd
$BATINCLUDE syssettings.dd
$BATINCLUDE ind_demandproj.dd
$BATINCLUDE res_demandproj.dd
$BATINCLUDE elc_baseconstraints.dd
$BATINCLUDE ind_baseconstraints.dd
$BATINCLUDE res_baseconstraints.dd
$BATINCLUDE tra_baseconstraints.dd
$BATINCLUDE sys_deliverycosts.dd
$BATINCLUDE elc_maxelcexports.dd
$BATINCLUDE elc_dh-pipesdata.dd
$BATINCLUDE sys_subannual_data.dd
$BATINCLUDE elc_excessheat_pots.dd
$BATINCLUDE ind_ee-low.dd
$BATINCLUDE res_buildingstockproj.dd
$BATINCLUDE res_restrictheatsav.dd
$BATINCLUDE res_app_effproj.dd
$BATINCLUDE sup_northseaminingproj.dd
$BATINCLUDE sup-elc_renewablepotentials.dd
$BATINCLUDE tra_xassumptions.dd
$BATINCLUDE elc_taxessubsidies.dd
$BATINCLUDE ind_taxessubsidies.dd
$BATINCLUDE res_taxessubsidies.dd
$BATINCLUDE tra_xtaxessubsidies.dd
$BATINCLUDE sup_taxessubsidies.dd
$BATINCLUDE ets-nets_emicoeff.dd
$BATINCLUDE tra_demandproj.dd
$BATINCLUDE tra_minimum_shares.dd
$BATINCLUDE tra_ttb.dd
$BATINCLUDE tra_shiftpotential.dd
$BATINCLUDE tra_infrastructure_structure.dd
$BATINCLUDE sys_fuelinfrastructure.dd
$BATINCLUDE tra_ev_share.dd
$BATINCLUDE fuel_constraints.dd
$BATINCLUDE sys_elc_ie.dd
$BATINCLUDE ldc_increaseddemand_varprofile.dd
$BATINCLUDE sup_fuelprice_bf18.dd
$BATINCLUDE sys_dr.dd
$BATINCLUDE tra_int_shipping.dd
$BATINCLUDE vat.dd
$BATINCLUDE sys_co2_2040_ship_ts.dd

SET MILESTONYR /2010,2012,2015,2020,2025,2030,2035,2040,2045,2050/;
$SET RUN_NAME 'DTU_International_bunkering_2040'


$ SET VEDAVDD 'YES'

* do the rest
$ BATINCLUDE maindrv.mod mod



