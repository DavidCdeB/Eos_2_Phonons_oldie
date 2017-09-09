#

source ~/.profile

run='/home/dcarrasc/CRYSTAL17_leaving_the_default_MPPLIB_in_inc_and_changing_to_intel_2016_compiler/scripts_to_run_Linux-ifort_cx1_b/CRYSTAL14_cx1/qcry17'



for i in 116.717211\
  115.173737\
  113.650968\
  112.153584\
  110.660862\
  109.179013\
  107.694583\
  106.291465


do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

mkdir Freqcalc_Supercell_Landau
 

cd ../../
pwd
done

for i in 116.717211\
  115.173737\
  113.650968\
  112.153584\
  110.660862\
  109.179013\
  107.694583\
  106.291465



do

cp ${i}.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau

$run $i 64 06:00 

sed -i s/select=4:ncpus=16/select=4:ncpus=24/ ${i}.qsub

comp_cx1 ${i}.qsub

qsub -q pqnmh ${i}.qsub

cd -

done 

