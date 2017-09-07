#

source ~/.profile

run='/home/dcarrasc/CRYSTAL17_leaving_the_default_MPPLIB_in_inc_and_changing_to_intel_2016_compiler_sgi_for_cx2_inc_file_from_Nic_16_Jan_2017/scripts_to_run/CRYSTAL14_cx1/qcry17'

mkdir DISPERSI

for i in   96.407229\
 95.300672\
 93.786194\
 97.940304\

do 
pwd
echo $i
cd DISPERSI
pwd
mkdir $i
pwd
cd $i 
pwd
mkdir SCELPHONO_Landau
pwd
cd SCELPHONO_Landau
cd ../../../
pwd
done

for i in   96.407229\
 95.300672\
 93.786194\
 97.940304\

do

cp ${i}.d12  ./DISPERSI/$i/SCELPHONO_Landau
cd ./DISPERSI/$i/SCELPHONO_Landau

$run $i 64 02:00 

#sed -i s/select=4:ncpus=16/select=18:ncpus=24/ calcite_I_eos.qsub
sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}.qsub

comp_cx2 ${i}.qsub

qsub -q short ${i}.qsub

cd -

done 

