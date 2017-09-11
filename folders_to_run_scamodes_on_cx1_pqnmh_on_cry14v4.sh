#

source ~/.profile

run='/home/gmallia/CRYSTAL14_cx1/qcry14.v4'

# SACNMODE 1 and 2:
for i in 106.291465\
 107.694583\
 109.179013\
 110.660862

do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau

cd SCANMODE_1
rm -Rf cry14v4*
mkdir cry14v4
cp ../*  ./cry14v4

cd ../
cd SCANMODE_2
rm -Rf cry14v4*
mkdir cry14v4
cp ../*  ./cry14v4


cd ../../../../
pwd
done

# SCANMODE 1 and 2 running:
for i in 106.291465\
 107.694583\
 109.179013\
 110.660862

do 

cp ${i}_SCANMODE_1.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4

$run ${i}_SCANMODE_1  ${i}  64 10:00 

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}_SCANMODE_1.qsub

comp_cx1 ${i}_SCANMODE_1.qsub

qsub -q pqnmh ${i}_SCANMODE_1.qsub

cd -

cp ${i}_SCANMODE_2.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4

$run ${i}_SCANMODE_2  ${i}  64 10:00

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}_SCANMODE_2.qsub

comp_cx1 ${i}_SCANMODE_2.qsub

qsub -q pqnmh ${i}_SCANMODE_2.qsub

cd -

done 


# SCANMODE 1
for i in 112.153584\
 113.650968\
 115.173737\
 116.717211

do

pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau

#mkdir SCANMODE_1

#cp * ./SCANMODE_1

cd SCANMODE_1

rm -Rf cry14v4*
mkdir cry14v4
cp ../*  ./cry14v4

cd ../../../../

pwd
done

# SCANMODE 1 running:
for i in 112.153584\
 113.650968\
 115.173737\
 116.717211

do 

cp ${i}_SCANMODE_1.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4

$run ${i}_SCANMODE_1  ${i}  64 10:00 

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}_SCANMODE_1.qsub

comp_cx1 ${i}_SCANMODE_1.qsub

qsub -q pqnmh ${i}_SCANMODE_1.qsub

cd -

done 






