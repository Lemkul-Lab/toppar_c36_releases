#!/bin/csh -f
# run charmm test cases

#ocracoke
#setenv charmm /opt/mackerell/apps/charmm/serial/charmm-c47b2-serial
setenv charmm /opt/mackerell/apps/charmm/serial/charmm-c49a2-serial-ljpme
#setenv charmm /raid/alex/charmm/code/charmm_git/stable-release/bin/charmm_c46b1
#setenv charmm /raid/alex/charmm/code/charmm_git/stable-release/build/cmake/charmm

setenv outdir ./out_2024_7_c49a2-serial-ljpme_toppar

mkdir -p $outdir

setenv toppar /raid/alex/param/toppar_jul24/toppar

#setenv toppar /raid/alex/param/toppar_jul24

##most toppar file definitions are set in toppar.str or
##toppar_ljpme.str, not below, but check the individual inputs if
##problems are encountered.

setenv top19             $toppar/toph19.inp
setenv par19             $toppar/param19.inp
setenv topprot22         $toppar/top_all22_prot.rtf
setenv parprot22         $toppar/par_all22_prot.prm
setenv topether          $toppar/top_all35_ethers.rtf
setenv parether          $toppar/par_all35_ethers.prm
setenv topcgenff         $toppar/top_all36_cgenff.rtf
setenv parcgenff         $toppar/par_all36_cgenff.prm

#include topparcarblip
setenv topparlipid       $toppar/stream/lipid/toppar_all36_lipid_list.str  #reads all lipid stream files

#non_charmm files
setenv topncamber    $toppar/non_charmm/top_amber_cornell.inp
setenv parncamber    $toppar/non_charmm/par_amber_cornell.inp
setenv parncamb98    $toppar/non_charmm/par_amber_98.inp
setenv topncamb14    $toppar/non_charmm/parm14sb_all.rtf
setenv parncamb14    $toppar/non_charmm/parm14sb_all.prm
setenv topncbms      $toppar/non_charmm/top_bms_dec03.inp
setenv parncbms      $toppar/non_charmm/par_bms_dec03.inp
setenv topncopls     $toppar/non_charmm/top_opls_aa.inp
setenv parncopls     $toppar/non_charmm/par_opls_aa.inp
setenv topncoplsaam  $toppar/non_charmm/top_opls_aam.inp
setenv parncoplsaam  $toppar/non_charmm/par_opls_aam.inp

#pre-all36 files

$charmm a:$top19 b:$par19 < prot/gen_prot_param19.inp > $outdir/gen_prot_param19.out

$charmm a:$topprot22 b:$parprot22 < prot/test_all22_prot.inp > $outdir/test_all22_prot.out 

$charmm a:$topether b:$parether < misc/test_all35_ethers.inp > $outdir/test_all35_ethers.out

#cgenff: test against cgenff toppar files only to avoid competing residue names in the charmm36 toppar files
$charmm a:$topcgenff b:$parcgenff < cgenff/test_cgenff.inp > $outdir/test_cgenff.out

#protein

$charmm < prot/test_all36m_prot.inp > $outdir/test_all36m_prot.out 

$charmm < prot/test_all36_prot_heme.inp > $outdir/test_all36_prot_heme.out

$charmm < prot/test_all36_prot_model.inp > $outdir/test_all36_prot_model.out

$charmm < prot/test_all36_prot_aldehydes.inp > $outdir/test_all36_prot_aldehydes.out

$charmm < prot/test_all36_prot_fluoro_alkanes.inp > $outdir/test_all36_prot_fluoro_alkanes.out

$charmm < prot/test_all36_prot_pyridines.inp > $outdir/test_all36_prot_pyridines.out

$charmm < prot/test_all36_prot_retinol.inp > $outdir/test_all36_prot_retinol.out

$charmm < prot/test_all36_prot_arg0.inp > $outdir/test_all36_prot_arg0.out

$charmm < prot/test_all36_prot_modify_res.inp > $outdir/test_all36_prot_modify_res.out

$charmm < prot/test_all36_prot_d_amino_acids.inp > $outdir/test_all36_prot_c36m_d_amino_acids.out

$charmm < prot/test_all36_prot_cofactors.inp > $outdir/test_all36_prot_cofactors.out

# sugar/carb

$charmm < carb/test_all36_carb.inp > $outdir/test_all36_carb.out

$charmm < carb/test_all36_carb_model.inp > $outdir/test_all36_carb_model.out

$charmm < carb/test_all36_carb_glycopeptides.inp > $outdir/test_all36_carb_glycopeptides.out

$charmm < carb/test_all36_carb_glycolipids.inp > $outdir/test_all36_carb_glycolipids.out

$charmm < carb/test_all36_carb_imlab.inp > $outdir/test_all36_carb_imlab.out

$charmm < carb/test_all36_carb_lignin.inp > $outdir/test_all36_carb_lignin.out

# nucleic acids

$charmm < na/test_all36_na.inp > $outdir/test_all36_na.out 

$charmm < na/test_all36_na_model.inp > $outdir/test_all36_na_model.out

$charmm < na/test_all36_na_nad_ppi.inp > $outdir/test_all36_na_nad_ppi.out

$charmm < na/test_all36_na_modifications.inp > $outdir/test_all36_na_modifications.out

$charmm < na/test_all36_na_reactive_rna.inp > $outdir/test_all36_na_reactive_rna.out

$charmm < na/test_all36_na_rna_modified.inp > $outdir/test_all36_na_rna_modified.out

#lipids
$charmm < lipid/test_all36_lipid.inp > $outdir/test_all36_lipid.out

$charmm < lipid/test_all36_lipid_ljpme.inp > $outdir/test_all36_lipid_ljpme.out

$charmm < lipid/test_all36_lipid_model.inp > $outdir/test_all36_lipid_model.out

$charmm < lipid/test_all36_lipid_detergent.inp > $outdir/test_all36_lipid_detergent.out

$charmm < lipid/test_all36_lipid_lps.inp > $outdir/test_all36_lipid_lps.out

$charmm < lipid/test_all36_lipid_bacterial.inp > $outdir/test_all36_lipid_bacterial.out

$charmm < lipid/test_all36_lipid_bacterial_ljpme.inp > $outdir/test_all36_lipid_bacterial_ljpme.out

$charmm < lipid/test_all36_lipid_cardiolipin.inp > $outdir/test_all36_lipid_cardiolipin.out

$charmm < lipid/test_all36_lipid_cholesterol.inp > $outdir/test_all36_lipid_cholesterol.out

$charmm < lipid/test_all36_lipid_inositol.inp > $outdir/test_all36_lipid_inositol.out

$charmm < lipid/test_all36_lipid_main.inp > $outdir/test_all36_lipid_main.out

$charmm < lipid/test_all36_lipid_miscellaneous.inp > $outdir/test_all36_lipid_miscellaneous.out

$charmm < lipid/test_all36_lipid_miscellaneous_ljpme.inp > $outdir/test_all36_lipid_miscellaneous_ljpme.out

$charmm < lipid/test_all36_lipid_sphingo.inp > $outdir/test_all36_lipid_sphingo.out

$charmm < lipid/test_all36_lipid_yeast.inp > $outdir/test_all36_lipid_yeast.out

$charmm < lipid/test_all36_lipid_yeast_ljpme.inp > $outdir/test_all36_lipid_yeast_ljpme.out

$charmm < lipid/test_all36_lipid_prot.inp > $outdir/test_all36_lipid_prot.out

$charmm < lipid/test_all36_lipid_ether.inp > $outdir/test_all36_lipid_ether.out

$charmm < lipid/test_all36_lipid_ether_ljpme.inp > $outdir/test_all36_lipid_ether_ljpme.out

$charmm < lipid/test_all36_lipid_cationpi_wyf.inp > $outdir/test_all36_lipid_cationpi_wyf.out

#generic water/ion, hbond and miscellaneous stream files

#read all toppar files....
$charmm < misc/test_all36_read_all.inp > $outdir/test_all36_read_all.out

$charmm < misc/test_amines.inp > $outdir/test_amines.out

$charmm < misc/test_water_ions.inp > $outdir/test_water_ions.out

$charmm < misc/test_hbond.inp > $outdir/test_hbond.out

$charmm < misc/test_dum_nobel_gases.inp > $outdir/test_dum_nobel_gases.out

$charmm < misc/test_all36_ions_won.inp > $outdir/test_all36_ions_won.out

$charmm < misc/test_print_rtf.inp > $outdir/test_print_rtf.out

#combined files
#Reading first NA and then prot because prot is parameterized against VSWItch
#and everything else against VFSWitch. And this particular test case 
#historically assumes VSWItch (contrary to most others).

$charmm < prot/test_all36_prot_na.inp > $outdir/test_all36_prot_na.out

$charmm < prot/test_all36_prot_na_combined.inp > $outdir/test_all36_prot_na_combined.out

#Reading first lipid and then prot because prot is parameterized against VSWItch
#and everything else against VFSWitch. And this particular test case
#historically assumes VSWItch (contrary to most others).

$charmm < prot/test_all36_prot_lipid.inp > $outdir/test_all36_prot_lipid.out

$charmm < na/test_all36_na_lipid.inp > $outdir/test_all36_na_lipid.out

# non_charmm toppar files: files not in toppar.str

$charmm a:$topncamber b:$parncamber < non_charmm/test_non_charmm_amber.inp > $outdir/test_non_charmm_amber_cornell.out

$charmm a:$topncamber b:$parncamb98 < non_charmm/test_non_charmm_amber.inp > $outdir/test_non_charmm_amber_98.out

$charmm a:$topncamb14 b:$parncamb14 < non_charmm/test_non_charmm_amber.inp > $outdir/test_non_charmm_amber_14.out

$charmm a:$topncbms b:$parncbms < non_charmm/test_non_charmm_bms.inp > $outdir/test_non_charmm_bms.out

$charmm a:$topncopls b:$parncopls < non_charmm/test_non_charmm_opls.inp > $outdir/test_non_charmm_opls.out

$charmm a:$topncoplsaam b:$parncoplsaam < non_charmm/test_non_charmm_opls.inp > $outdir/test_non_charmm_opls_aam.out

#non_tip3p water models
set count = 1
set total = 9
while ($count <= $total)
$charmm dir:$toppar count:$count < non_charmm/test_water_ions_non_charmm.inp > $outdir/test_water_ions_non_charmm_$count.out
@ count = ($count + 1)
end

#grep for crashed jobs
grep '! I I I I I !' $outdir/*.out
grep '\   XXX   /' $outdir/*.out
grep 'CHECK THOSE INPUTS, ACE' $outdir/*.out

