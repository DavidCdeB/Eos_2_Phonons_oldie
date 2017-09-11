#

source ~/.profile

run='/home/gmallia/CRYSTAL14_cx2/qcry14.v4'


FILES_SCANMODE_1="118.747142
                  117.191959
                  115.636340
                  114.115186
                  109.602008
                  112.607815
                  111.104078
                  108.123626
                  106.700387"

FILES_SCANMODE_2="109.602008
                  112.607815
                  111.104078
                  108.123626
                  106.700387"

FILES_SCANMODE_3="108.123626 106.700387"

FILES_SCANMODE_4="108.123626 106.700387"


# SACNMODE 1:
for i in ${FILES_SCANMODE_1}

do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau
rm -Rf SCANMODE_1
mkdir SCANMODE_1
cd SCANMODE_1
rm -Rf cry14v4
mkdir cry14v4
cp ../*  ./cry14v4


cd ../../../../
pwd
done


# SACNMODE 1 Running:
for i in ${FILES_SCANMODE_1}

do

cp ${i}_SCANMODE_1.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_1/cry14v4

$run ${i}_SCANMODE_1 ${i} 64 12:00 

#sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_1.qsub
sed -i s/select=3:ncpus=24:mpiprocs=24:ompthreads=1:mem=100gb/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_1.qsub

#comp_cx2 ${i}_SCANMODE_1.qsub

qsub -q large ${i}_SCANMODE_1.qsub

sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_1.qsub
#sed -i s/select=3:ncpus=24:mpiprocs=24:ompthreads=1:mem=100gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_1.qsub

sed -i s/walltime=12:00:00/walltime=24:00:00/ ${i}_SCANMODE_1.qsub

qsub -q general ${i}_SCANMODE_1.qsub


cd -

done 


# SACNMODE 2: 
for i in ${FILES_SCANMODE_2}

do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau
rm -Rf SCANMODE_2
mkdir SCANMODE_2
cd SCANMODE_2
rm -Rf cry14v4
mkdir cry14v4
cp ../*  ./cry14v4


cd ../../../../
pwd
done


# SACNMODE 2 Running:
for i in ${FILES_SCANMODE_2}

do

cp ${i}_SCANMODE_2.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_2/cry14v4

$run ${i}_SCANMODE_2 ${i} 64 12:00 

#sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_2.qsub
sed -i s/select=3:ncpus=24:mpiprocs=24:ompthreads=1:mem=100gb/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_2.qsub

#comp_cx2 ${i}_SCANMODE_2.qsub

qsub -q large ${i}_SCANMODE_2.qsub

#sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_2.qsub
sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_2.qsub
sed -i s/walltime=12:00:00/walltime=24:00:00/ ${i}_SCANMODE_2.qsub

qsub -q general ${i}_SCANMODE_2.qsub


cd -

done 

# SACNMODE 3:
for i in ${FILES_SCANMODE_3}

do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau
rm -Rf SCANMODE_3
mkdir SCANMODE_3
cd SCANMODE_3
rm -Rf cry14v4
mkdir cry14v4
cp ../*  ./cry14v4


cd ../../../../
pwd
done


# SACNMODE 3 Running:
for i in ${FILES_SCANMODE_3}

do

cp ${i}_SCANMODE_3.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_3/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_3/cry14v4

$run ${i}_SCANMODE_3 ${i} 64 12:00 

#sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_3.qsub
sed -i s/select=3:ncpus=24:mpiprocs=24:ompthreads=1:mem=100gb/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_3.qsub

#comp_cx2 ${i}_SCANMODE_3.qsub

qsub -q large ${i}_SCANMODE_3.qsub

#sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_3.qsub
sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_3.qsub
sed -i s/walltime=12:00:00/walltime=24:00:00/ ${i}_SCANMODE_3.qsub

qsub -q general ${i}_SCANMODE_3.qsub


cd -

done 

# SACNMODE 4:
for i in ${FILES_SCANMODE_4}

do 
pwd
echo $i

cd $i

pwd

cd SCELPHONO_Landau

pwd

cd Freqcalc_Supercell_Landau
rm -Rf SCANMODE_4
mkdir SCANMODE_4
cd SCANMODE_4
rm -Rf cry14v4
mkdir cry14v4
cp ../*  ./cry14v4


cd ../../../../
pwd
done


# SACNMODE 4 Running:
for i in ${FILES_SCANMODE_4}

do

cp ${i}_SCANMODE_4.d12  ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_4/cry14v4
cd ./$i/SCELPHONO_Landau/Freqcalc_Supercell_Landau/SCANMODE_4/cry14v4

$run ${i}_SCANMODE_4 ${i} 64 12:00 

#sed -i s/select=4:ncpus=16/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_4.qsub
sed -i s/select=3:ncpus=24:mpiprocs=24:ompthreads=1:mem=100gb/select=18:ncpus=24:mem=120gb/ ${i}_SCANMODE_4.qsub

#comp_cx2 ${i}_SCANMODE_4.qsub

qsub -q large ${i}_SCANMODE_4.qsub

#sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_4.qsub
sed -i s/select=18:ncpus=24:mem=120gb/select=6:ncpus=16:mem=62gb/ ${i}_SCANMODE_4.qsub
sed -i s/walltime=12:00:00/walltime=24:00:00/ ${i}_SCANMODE_4.qsub

qsub -q general ${i}_SCANMODE_4.qsub


cd -

done 


