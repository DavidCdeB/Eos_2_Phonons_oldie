#

source ~/.profile

run='/home/dcarrasc/CRYSTAL17_leaving_the_default_MPPLIB_in_inc_and_changing_to_intel_2016_compiler/scripts_to_run_Linux-ifort_cx1_b/CRYSTAL14_cx1/qcry17'


for i in 109.602008\
  108.123626\
  106.700387\
  118.747142\
  117.191959\
  115.636340\
  114.115186\
  112.607815\
  111.104078


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


for i in 109.602008\
  108.123626\
  106.700387\
  118.747142\
  117.191959\
  115.636340\
  114.115186\
  112.607815\
  111.104078

do

cp ${i}.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau

$run $i 64 12:00 

sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}.qsub

comp_cx2 ${i}.qsub

qsub -q large ${i}.qsub

sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}.qsub
sed -i s/walltime=12:00:00/walltime=24:00:00/ ${i}.qsub

qsub -q general ${i}.qsub


cd -

done 

