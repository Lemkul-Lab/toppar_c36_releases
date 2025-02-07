#copy toppar files to be release to a subdirectory, toppar, 
#for distribution with CHARMM standard releases, with the 
#CHARMM-Gui and on the MacKerell lab web page.

#script designed to be run from parent toppar_DATE directory (e.g. toppar_jul23)

mkdir toppar
mkdir toppar/stream
mkdir toppar/stream/carb
mkdir toppar/stream/cphmd
mkdir toppar/stream/lipid
mkdir toppar/stream/misc
mkdir toppar/stream/na
mkdir toppar/stream/prot

cp -r ./ace toppar/.
cp -r ./cheq toppar/.
cp -r ./charmm_modifications toppar/.
cp -r ./drude toppar/.
cp -r ./gbsw toppar/.
cp -r ./larmord toppar/.
cp -r ./metals toppar/.
cp -r ./non_charmm toppar/.
cp -r ./openmm_gbsaobc2 toppar/.

cp ./par_all22_prot.prm toppar/.
cp ./par_all35_ethers.prm toppar/.
cp ./par_all36_carb.prm toppar/.
cp ./par_all36_cgenff.prm toppar/.
cp ./par_all36_lipid.prm toppar/.
cp ./par_all36_lipid_ljpme.prm toppar/.
cp ./par_all36_na.prm toppar/.
cp ./par_all36m_prot.prm toppar/.
cp ./param19.inp toppar/.
cp ./par_hbond.inp toppar/.
cp -r ./rush toppar/.
cp -r ./silicates toppar/.

cp stream/carb/*.str toppar/stream/carb/.
cp stream/cphmd/*.str toppar/stream/cphmd/.
cp stream/lipid/*.str toppar/stream/lipid/.
cp stream/misc/*.str toppar/stream/misc/.
cp stream/na/*.str toppar/stream/na/.
cp stream/prot/*.str toppar/stream/prot/.

cp -r ./tamdfff toppar/.
cp ./top_all22_prot.rtf toppar/.
cp ./top_all35_ethers.rtf toppar/.
cp ./top_all36_carb.rtf toppar/.
cp ./top_all36_cgenff.rtf toppar/.
cp ./top_all36_lipid.rtf toppar/.
cp ./top_all36_lipid_ljpme.rtf toppar/.
cp ./top_all36_na.rtf toppar/.
cp ./top_all36_prot.rtf toppar/.
cp ./toph19.inp toppar/.
cp ./toppar_all.history toppar/.
cp ./toppar_water_ions.str toppar/.




