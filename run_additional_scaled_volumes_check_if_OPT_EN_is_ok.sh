#

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

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.170876
pwd
grep "OPT EN" /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.170876/*.out

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.326384
pwd
grep "OPT EN" /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.326384/*.out

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.481971
pwd
grep "OPT EN" /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.481971/*.out

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.637640
pwd
grep "OPT EN" /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.637640/*.out

cd /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.793389
pwd
grep "OPT EN" /work/dcarrasc/pob_TZVP/Calcite_I/$i/SHRINK_8_8__bipolar_18_18__TOLINTEG_8_18__XXLGRID_TOLDEE_8/EOS/scaling_volumes_between_116.573346_and_115.015449/115.793389/*.out

done

