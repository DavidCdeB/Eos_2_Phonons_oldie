#


source ~/.profile

run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'

ScriptDir=`pwd`

SCANMODE_1_FILES="117.743646  
116.184030  
114.632273  
113.087568  
111.593876"

ADDITIONAL_VOLS="
115.170876
115.326384
115.481971
115.637640
115.793389
"

# SCANMODE 1
for i in ${SCANMODE_1_FILES}
do

cp  Extract_E_and_V_from_cvolopt_run.py  ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG
cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG
python Extract_E_and_V_from_cvolopt_run.py
cd $ScriptDir
done 

cd $ScriptDir


# ADDITIONAL VOLS
for i in ${ADDITIONAL_VOLS}
do

cp  Extract_E_and_V_from_cvolopt_run.py  ../../scaling_volumes_between_116.573346_and_115.015449/${i}
cd  ../../scaling_volumes_between_116.573346_and_115.015449/${i}
python Extract_E_and_V_from_cvolopt_run.py
cd $ScriptDir
done

cd $ScriptDir

