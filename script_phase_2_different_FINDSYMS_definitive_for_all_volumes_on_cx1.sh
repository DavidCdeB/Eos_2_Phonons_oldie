#


source ~/.profile

#run='/home/dcarrasc/CRYSTAL17_leaving_the_default_MPPLIB_in_inc_and_changing_to_intel_2016_compiler/scripts_to_run_Linux-ifort_cx1_b/CRYSTAL14_cx1/qcry17'
run='/home/gmallia/CRYSTAL14_cx1/qcry14.v4'
#run='/home/david/programs/CRYSTAL17/utils17/runcry17'
# Note:  to check the SG you get in Findsym:
# ...DISPERSI$ grep "symmetry_space_group_name"  ./1*/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_*/cry14v4/At_*displacement/Findsym/*findsym_numbers.cif

ScriptDir=`pwd`


SCANMODE_1_FILES="112.153584  
                  113.650968 
                  115.173737
                  116.717211
                  106.291465
                  107.694583
                  109.179013
                  110.660862"

SCANMODE_2_FILES="106.291465
                  107.694583
                  109.179013
                  110.660862"



# SCANMODE 1
for i in ${SCANMODE_1_FILES}
do
pwd
echo $i

pwd

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/

rm -Rf Findsym
mkdir Findsym

cp ${i}.FINDSYM ./Findsym

cd Findsym

cp  ${i}.FINDSYM  ${i}_0_1.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.1   accuracy\n0.1   accuracy\n0.1   accuracy/' ${i}_0_1.FINDSYM
findsym < ${i}_0_1.FINDSYM > ${i}_findsym_numbers_0_1.cif

cp  ${i}.FINDSYM  ${i}_0_01.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_01.FINDSYM
sed -i 's/0.0001   accuracy/0.01   accuracy\n0.01   accuracy\n0.01   accuracy/' ${i}_0_01.FINDSYM
findsym < ${i}_0_01.FINDSYM > ${i}_findsym_numbers_0_01.cif

cp  ${i}.FINDSYM  ${i}_0_001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_001.FINDSYM
sed -i 's/0.0001   accuracy/0.001   accuracy\n0.001   accuracy\n0.001   accuracy/' ${i}_0_001.FINDSYM
findsym < ${i}_0_001.FINDSYM > ${i}_findsym_numbers_0_001.cif

cp  ${i}.FINDSYM  ${i}_0_0001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_0001.FINDSYM
sed -i 's/0.0001   accuracy/0.0001   accuracy\n0.0001   accuracy\n0.0001   accuracy/' ${i}_0_0001.FINDSYM
findsym < ${i}_0_0001.FINDSYM > ${i}_findsym_numbers_0_0001.cif

cp  ${i}.FINDSYM  ${i}_0_00001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_00001.FINDSYM
sed -i 's/0.0001   accuracy/0.00001   accuracy\n0.00001   accuracy\n0.00001   accuracy/' ${i}_0_00001.FINDSYM
findsym < ${i}_0_00001.FINDSYM > ${i}_findsym_numbers_0_00001.cif

cp  ${i}.FINDSYM  ${i}_0_000001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_000001.FINDSYM
sed -i 's/0.0001   accuracy/0.000001   accuracy\n0.000001   accuracy\n0.000001   accuracy/' ${i}_0_000001.FINDSYM
findsym < ${i}_0_000001.FINDSYM > ${i}_findsym_numbers_0_000001.cif

cp  ${i}.FINDSYM  ${i}_0.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0.FINDSYM
sed -i 's/0.0001   accuracy/0   accuracy\n0   accuracy\n0   accuracy/' ${i}_0.FINDSYM
findsym < ${i}_0.FINDSYM > ${i}_findsym_numbers_0.cif



WorkingDir=`pwd`

cd $ScriptDir
done 

cd $ScriptDir


# SCANMODE 2
for i in ${SCANMODE_2_FILES}
do
pwd
echo $i

pwd

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_*displacement/

rm -Rf Findsym
mkdir Findsym

cp ${i}.FINDSYM ./Findsym

cd Findsym

cp  ${i}.FINDSYM  ${i}_0_1.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.1   accuracy\n0.1   accuracy\n0.1   accuracy/' ${i}_0_1.FINDSYM
findsym < ${i}_0_1.FINDSYM > ${i}_findsym_numbers_0_1.cif

cp  ${i}.FINDSYM  ${i}_0_01.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_01.FINDSYM
sed -i 's/0.0001   accuracy/0.01   accuracy\n0.01   accuracy\n0.01   accuracy/' ${i}_0_01.FINDSYM
findsym < ${i}_0_01.FINDSYM > ${i}_findsym_numbers_0_01.cif

cp  ${i}.FINDSYM  ${i}_0_001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_001.FINDSYM
sed -i 's/0.0001   accuracy/0.001   accuracy\n0.001   accuracy\n0.001   accuracy/' ${i}_0_001.FINDSYM
findsym < ${i}_0_001.FINDSYM > ${i}_findsym_numbers_0_001.cif

cp  ${i}.FINDSYM  ${i}_0_0001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_0001.FINDSYM
sed -i 's/0.0001   accuracy/0.0001   accuracy\n0.0001   accuracy\n0.0001   accuracy/' ${i}_0_0001.FINDSYM
findsym < ${i}_0_0001.FINDSYM > ${i}_findsym_numbers_0_0001.cif

cp  ${i}.FINDSYM  ${i}_0_00001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_00001.FINDSYM
sed -i 's/0.0001   accuracy/0.00001   accuracy\n0.00001   accuracy\n0.00001   accuracy/' ${i}_0_00001.FINDSYM
findsym < ${i}_0_00001.FINDSYM > ${i}_findsym_numbers_0_00001.cif

cp  ${i}.FINDSYM  ${i}_0_000001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0_000001.FINDSYM
sed -i 's/0.0001   accuracy/0.000001   accuracy\n0.000001   accuracy\n0.000001   accuracy/' ${i}_0_000001.FINDSYM
findsym < ${i}_0_000001.FINDSYM > ${i}_findsym_numbers_0_000001.cif

cp  ${i}.FINDSYM  ${i}_0.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3/Ca   Ca   Ca   Ca   C   C   C   C   O   O   O   O   O   O   O   O   O   O   O   O/'  ${i}_0.FINDSYM
sed -i 's/0.0001   accuracy/0   accuracy\n0   accuracy\n0   accuracy/' ${i}_0.FINDSYM
findsym < ${i}_0.FINDSYM > ${i}_findsym_numbers_0.cif



WorkingDir=`pwd`

cd $ScriptDir
done 

cd $ScriptDir


