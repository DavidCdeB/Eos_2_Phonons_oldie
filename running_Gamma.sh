#

# These have already been runned:
#121.725312/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_0.4000_displacement/Findsym/121.725312_findsym_numbers_0_1/CVOLOPT_indicating_SG/FREQCALC
#120.133809/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_-1.6000_displacement/Findsym/120.133809_findsym_numbers_0_1/CVOLOPT_indicating_SG/

source ~/.profile

run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'

ScriptDir=`pwd`

DIRS="
116.974380/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_-3.2000_displacement/Findsym/116.974380_findsym_numbers_0_1/CVOLOPT_indicating_SG/
118.551116/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_-2.4000_displacement/Findsym/118.551116_findsym_numbers_0_1/CVOLOPT_indicating_SG/
115.432482/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_3.6000_displacement/Findsym/115.432482_findsym_numbers_0_1/CVOLOPT_indicating_SG/
113.896849/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_-4.4000_displacement/Findsym/113.896849_findsym_numbers_0_1/CVOLOPT_indicating_SG/
112.366531/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_-4.8000_displacement/Findsym/112.366531_findsym_numbers_0_1/CVOLOPT_indicating_SG/
110.840213/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_5.6000_displacement/Findsym/110.840213_findsym_numbers_0_1/CVOLOPT_indicating_SG/
109.391537/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_-6.4000_displacement/Findsym/109.391537_findsym_numbers_0_1/CVOLOPT_indicating_SG/
"

for i in ${DIRS}; do

cd $i

rm -Rf FREQCALC
mkdir FREQCALC 

cd $ScriptDir

cp  Eos_2_Phonons_when_threre_is_no_crystallographic_cell.py final_part.txt ./$i/FREQCALC

cd $i/FREQCALC

cp ../*.out .
python Eos_2_Phonons_when_threre_is_no_crystallographic_cell.py 

INPUT=`basename  *FREQCALC.d12 .d12`
cat *FREQCALC.d12 final_part.txt > ${INPUT}_Gamma.d12

INPUT_RUN=`basename  *Gamma.d12 .d12`

$run $INPUT_RUN 96 72:00 

qsub -q pqnmh *.qsub

cd $ScriptDir

done
