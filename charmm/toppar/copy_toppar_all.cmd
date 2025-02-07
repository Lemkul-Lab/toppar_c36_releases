#copy old toppar_* files/directories to new toppar_* directory
#from inside the new toppar_* directory.  note that a number
#of specific filenames must be updated 
#files/directories are in "ls -al" order

#first create new directory (../toppar_jul23) and copy
#copy_toppar_all.cmd and copy_toppar_release.cmd to that directory
#before editing them

#manual copy and edit
cp ../toppar_jul23/00changes_2023_to_2024.txt .
cp ../toppar_jul23/00git_information.txt .
cp ../toppar_jul23/00git_umb_toppar_info.txt .

#directories included with the toppar releases
cp -r ../toppar_jul23/ace .
cp -r ../toppar_jul23/cheq .
cp -r ../toppar_jul23/charmm_modifications .

#manual copy and edit
#cp ../toppar_jul23/copy_toppar_all.cmd .
#cp ../toppar_jul23/copy_toppar_release.cmd .

#cp -r ../toppar_jul23/doc .

mkdir drude 
cp ../toppar_jul23/drude/drude_toppar_2023.tgz drude/.
cp ../toppar_jul23/drude/positive_drude.tgz drude/.

cp -r ../toppar_jul23/gbsw .
cp -r ../toppar_jul23/larmord .
cp -r ../toppar_jul23/metals .

mkdir non_charmm
cp ../toppar_jul23/non_charmm/*.{inp,prm,rtf,str} non_charmm/.
cp ../toppar_jul23/non_charmm/00readme non_charmm/.
mkdir non_charmm/gromacs
cp ../toppar_jul23/non_charmm/gromacs/charmm36-jul2022.ff.tgz non_charmm/gromacs/.
cp ../toppar_jul23/non_charmm/gromacs/charmm36_ljpme-jul2022.ff.tgz non_charmm/gromacs/.

cp -r ../toppar_jul23/openmm_gbsaobc2 .

cp ../toppar_jul23/par_all22_prot.prm .
cp ../toppar_jul23/par_all35_ethers.prm .
cp ../toppar_jul23/par_all36_carb.prm .
cp ../toppar_jul23/par_all36_cgenff.prm .
cp ../toppar_jul23/par_all36_lipid_ljpme.prm .
cp ../toppar_jul23/par_all36_lipid.prm .
cp ../toppar_jul23/par_all36m_prot.prm .
cp ../toppar_jul23/par_all36_na.prm .
cp ../toppar_jul23/param19.inp .
cp ../toppar_jul23/par_hbond.inp .

cp -r ../toppar_jul23/rush .
cp -r ../toppar_jul23/silicates .

mkdir stream
mkdir stream/carb
cp ../toppar_jul23/stream/carb/*.str stream/carb/.
mkdir stream/cphmd
cp ../toppar_jul23/stream/cphmd/*.str stream/cphmd/.
mkdir stream/lipid
cp ../toppar_jul23/stream/lipid/*.str stream/lipid/.
mkdir stream/misc
cp ../toppar_jul23/stream/misc/*.str stream/misc/.
mkdir stream/na
cp ../toppar_jul23/stream/na/*.str stream/na/.
mkdir stream/prot
cp ../toppar_jul23/stream/prot/*.str stream/prot/.

cp -r ../toppar_jul23/tamdfff .

mkdir test
cp ../toppar_jul23/test/diff_all_c36.cmd test/.
cp ../toppar_jul23/test/run_all36_test.cmd test/.
cp ../toppar_jul23/test/toppar.str test/.
cp ../toppar_jul23/test/toppar_ljpme.str test/.
mkdir test/carb
cp ../toppar_jul23/test/carb/*.inp test/carb/.
mkdir test/cgenff
cp ../toppar_jul23/test/cgenff/*.inp test/cgenff/.
mkdir test/lipid
cp ../toppar_jul23/test/lipid/*.inp test/lipid/.
cp -r ../toppar_jul23/test/lipid/test_all36_lipid_crd test/lipid/.
mkdir test/misc
cp ../toppar_jul23/test/misc/*.inp test/misc/.
mkdir test/na
cp ../toppar_jul23/test/na/*.inp test/na/.
mkdir test/non_charmm
cp ../toppar_jul23/test/non_charmm/*.inp test/non_charmm/.
mkdir test/prot
cp ../toppar_jul23/test/prot/*.inp test/prot/.

cp -r ../toppar_jul23/top_all22_prot.rtf .
cp -r ../toppar_jul23/top_all35_ethers.rtf .
cp -r ../toppar_jul23/top_all36_carb.rtf .
cp -r ../toppar_jul23/top_all36_cgenff.rtf .
cp -r ../toppar_jul23/top_all36_lipid_ljpme.rtf .
cp -r ../toppar_jul23/top_all36_lipid.rtf .
cp -r ../toppar_jul23/top_all36_na.rtf .
cp -r ../toppar_jul23/top_all36_prot.rtf .
cp -r ../toppar_jul23/toph19.inp .

cp ../toppar_jul23/toppar_all.history .

cp ../toppar_jul23/toppar_water_ions.str .



