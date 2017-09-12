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

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/

rm -Rf ${i}_findsym_numbers_0_1
mkdir ${i}_findsym_numbers_0_1

cp ${i}_findsym_numbers_0_1.cif ./${i}_findsym_numbers_0_1

cd ${i}_findsym_numbers_0_1 
sed -i '/FINDSYM, Version/,/CIF file created by FINDSYM/d' ${i}_findsym_numbers_0_1.cif

cif2cell  ${i}_findsym_numbers_0_1.cif  -p crystal09
mv *.d12 ${i}_findsym_numbers.d12

sed -i '1,6d' ${i}_findsym_numbers.d12

sed  -i "1s/.*/Calcite/" ${i}_findsym_numbers.d12

sed -i 's/\! Ca//g' ${i}_findsym_numbers.d12
sed -i 's/\! O//g' ${i}_findsym_numbers.d12
sed -i 's/\! C//g' ${i}_findsym_numbers.d12
sed -i '$d' ${i}_findsym_numbers.d12

mkdir CVOLOPT_indicating_SG
cp ${i}_findsym_numbers.d12 ./CVOLOPT_indicating_SG
cd CVOLOPT_indicating_SG

WorkingDir=`pwd`

cd $ScriptDir

cp CVOLOPT_fragment  $WorkingDir

cd $WorkingDir

cat ${i}_findsym_numbers.d12  CVOLOPT_fragment > ${i}.d12

cd $ScriptDir
done 

cd $ScriptDir

# SCANMODE 1 Running:
for i in ${SCANMODE_1_FILES}
do 
pwd

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG

$run  ${i} 64 10:00

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}.qsub

qsub -q pqnmh ${i}.qsub

pwd  
cd $ScriptDir

done
cd $ScriptDir

# SCANMODE 2
for i in ${SCANMODE_2_FILES}
do
pwd
echo $i

pwd

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_*displacement/Findsym/

rm -Rf ${i}_findsym_numbers_0_1
mkdir ${i}_findsym_numbers_0_1

cp ${i}_findsym_numbers_0_1.cif ./${i}_findsym_numbers_0_1

cd ${i}_findsym_numbers_0_1 
sed -i '/FINDSYM, Version/,/CIF file created by FINDSYM/d' ${i}_findsym_numbers_0_1.cif

cif2cell  ${i}_findsym_numbers_0_1.cif  -p crystal09
mv *.d12 ${i}_findsym_numbers.d12

sed -i '1,6d' ${i}_findsym_numbers.d12

sed  -i "1s/.*/Calcite/" ${i}_findsym_numbers.d12

sed -i 's/\! Ca//g' ${i}_findsym_numbers.d12
sed -i 's/\! O//g' ${i}_findsym_numbers.d12
sed -i 's/\! C//g' ${i}_findsym_numbers.d12
sed -i '$d' ${i}_findsym_numbers.d12

mkdir CVOLOPT_indicating_SG
cp ${i}_findsym_numbers.d12 ./CVOLOPT_indicating_SG
cd CVOLOPT_indicating_SG

WorkingDir=`pwd`

cd $ScriptDir

cp CVOLOPT_fragment  $WorkingDir

cd $WorkingDir

cat ${i}_findsym_numbers.d12  CVOLOPT_fragment > ${i}.d12

cd $ScriptDir
done 

cd $ScriptDir

# SCANMODE 2 Running:
for i in ${SCANMODE_2_FILES}
do 
pwd

cd ./${i}/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4/At_*displacement/Findsym/${i}_findsym_numbers_0_1/CVOLOPT_indicating_SG

$run  ${i} 64 10:00

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}.qsub

qsub -q pqnmh ${i}.qsub

pwd  
cd $ScriptDir

done
cd $ScriptDir

