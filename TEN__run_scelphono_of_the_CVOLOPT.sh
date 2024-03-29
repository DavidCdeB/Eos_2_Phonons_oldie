#
source ~/.profile

#run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'
run='/home/dcarrasc/scripts_cry17/qcry'

ScriptDir=`pwd`

SCANMODE_1_FILES="117.743646
116.184030
114.632273
113.087568
111.593876"

cd $ScriptDir

# SCANMODE 1
for i in ${SCANMODE_1_FILES}; do

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG


rm -Rf SCELPHONO_121_1-21_210
mkdir SCELPHONO_121_1-21_210
cd SCELPHONO_121_1-21_210
Workdir=`pwd`

cd $ScriptDir

cp Eos_2_Phonons_when_threre_is_no_crystallographic_cell.py  $Workdir

cd $Workdir

cp ../*.out .
python Eos_2_Phonons_when_threre_is_no_crystallographic_cell.py

cd $ScriptDir

done

cd $ScriptDir

# Run:
for i in ${SCANMODE_1_FILES}; do

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG/SCELPHONO_121_1-21_210

$run *.d12 64 72:00                                     

sed -i s/select=3:ncpus=24/select=16:ncpus=24/ *.qsub

qsub -q pqnmh  *.qsub

cd $ScriptDir

done 

