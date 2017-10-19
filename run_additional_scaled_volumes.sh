#

source ~/.profile

run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'

DIRS="
PBE-D3
PBE
B3LYP
B3LYP-D3
PBE0
PBE0-DC
LDA
"

ScriptDir=`pwd`

for i in ${DIRS}

do

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS

rm -Rf scaling_volumes_between_116.573346_and_115.015449
mkdir scaling_volumes_between_116.573346_and_115.015449

cd scaling_volumes_between_116.573346_and_115.015449

mkdir 115.170876
mkdir 115.326384
mkdir 115.481971
mkdir 115.637640
mkdir 115.793389

cd  $ScriptDir

cp -avr  115.170876_TOP_FRAGMENT.d12  /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.170876

cp -avr ${i}_BOTTOM_FRAGMENT /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.170876

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.170876

cat 115.170876_TOP_FRAGMENT.d12 ${i}_BOTTOM_FRAGMENT > 115.170876.d12

$run 115.170876  64 72:00 

sed -i s/select=3:ncpus=24/select=8:ncpus=24/ 115.170876.qsub

qsub -q pqnmh 115.170876.qsub

cd  $ScriptDir
##############

cp -avr  115.326384_TOP_FRAGMENT.d12  /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.326384

cp -avr ${i}_BOTTOM_FRAGMENT /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.326384

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.326384

cat 115.326384_TOP_FRAGMENT.d12 ${i}_BOTTOM_FRAGMENT > 115.326384.d12

$run 115.326384  64 72:00 

sed -i s/select=3:ncpus=24/select=8:ncpus=24/ 115.326384.qsub

qsub -q pqnmh 115.326384.qsub

cd  $ScriptDir
##############

cp -avr  115.481971_TOP_FRAGMENT.d12  /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.481971

cp -avr ${i}_BOTTOM_FRAGMENT /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.481971

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.481971

cat 115.481971_TOP_FRAGMENT.d12 ${i}_BOTTOM_FRAGMENT > 115.481971.d12

$run 115.481971  64 72:00 

sed -i s/select=3:ncpus=24/select=8:ncpus=24/ 115.481971.qsub

qsub -q pqnmh 115.481971.qsub

cd  $ScriptDir
##############

cp -avr  115.637640_TOP_FRAGMENT.d12  /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.637640

cp -avr ${i}_BOTTOM_FRAGMENT /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.637640

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.637640

cat 115.637640_TOP_FRAGMENT.d12 ${i}_BOTTOM_FRAGMENT > 115.637640.d12

$run 115.637640  64 72:00 

sed -i s/select=3:ncpus=24/select=8:ncpus=24/ 115.637640.qsub

qsub -q pqnmh 115.637640.qsub

cd  $ScriptDir
##############

cp -avr  115.793389_TOP_FRAGMENT.d12  /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.793389

cp -avr ${i}_BOTTOM_FRAGMENT /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.793389

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.793389

cat 115.793389_TOP_FRAGMENT.d12 ${i}_BOTTOM_FRAGMENT > 115.793389.d12

$run 115.793389  64 72:00 

sed -i s/select=3:ncpus=24/select=8:ncpus=24/ 115.793389.qsub

qsub -q pqnmh 115.793389.qsub

cd  $ScriptDir
##############

done
cd  $ScriptDir



