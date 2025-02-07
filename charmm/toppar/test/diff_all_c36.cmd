#!/bin/csh -f
# diff charmm test case outputs

setenv dirold ../../toppar_jul23/test/out_2023_7_c47b2_toppar
#setenv dirold out_2024_7_c49a2-serial-ljpme

setenv dirnew out_2024_7_c49a2-serial-ljpme_toppar

echo $dirold
echo $dirnew

#echo "sed '/pyranose-furanose di\/poly-saccharide patches/Q' $dirnew/gen_carb_37_all.out | diff $dirold/gen_carb_all.out -"
#sed '/pyranose-furanose di\/poly-saccharide patches/Q' $dirnew/gen_carb_37_all.out | diff $dirold/gen_carb_all.out -
#echo "sed -n '"'/pyranose-furanose di\/poly-saccharide patches/{:a;n;/\(\$\$\$\$\$  New timer profile \$\$\$\$\$\)/\!ba};p'"' $dirnew/gen_carb_37_all.out | diff $dirold/gen_carb_all.out -"
#sed -n '/pyranose-furanose di\/poly-saccharide patches/{:a;n;/\(\$\$\$\$\$  New timer profile \$\$\$\$\$\)/\!ba};p' $dirnew/gen_carb_37_all.out | diff $dirold/gen_carb_all.out -

#file order: ls -al */*.inp

##carb

echo diff_toppar $dirold/test_all36_carb_glycolipids.out $dirnew/test_all36_carb_glycolipids.out
diff $dirold/test_all36_carb_glycolipids.out $dirnew/test_all36_carb_glycolipids.out

echo diff_toppar $dirold/test_all36_carb_glycopeptides.out $dirnew/test_all36_carb_glycopeptides.out
diff $dirold/test_all36_carb_glycopeptides.out $dirnew/test_all36_carb_glycopeptides.out

echo diff_toppar $dirold/test_all36_carb_imlab.out $dirnew/test_all36_carb_imlab.out
diff $dirold/test_all36_carb_imlab.out $dirnew/test_all36_carb_imlab.out

echo diff_toppar $dirold/test_all36_carb.out $dirnew/test_all36_carb.out
diff $dirold/test_all36_carb.out $dirnew/test_all36_carb.out

echo diff_toppar $dirold/test_all36_carb_lignin.out $dirnew/test_all36_carb_lignin.out
diff $dirold/test_all36_carb_lignin.out $dirnew/test_all36_carb_lignin.out

echo diff_toppar $dirold/test_all36_carb_model.out $dirnew/test_all36_carb_model.out
diff $dirold/test_all36_carb_model.out $dirnew/test_all36_carb_model.out

##cgenff

echo diff_toppar $dirold/test_cgenff.out $dirnew/test_cgenff.out
diff $dirold/test_cgenff.out $dirnew/test_cgenff.out

##lipid

echo diff_toppar $dirold/test_all36_lipid_bacterial.out $dirnew/test_all36_lipid_bacterial.out
diff $dirold/test_all36_lipid_bacterial.out $dirnew/test_all36_lipid_bacterial.out

echo diff_toppar $dirold/test_all36_lipid_bacterial_ljpme.out $dirnew/test_all36_lipid_bacterial_ljpme.out
diff $dirold/test_all36_lipid_bacterial_ljpme.out $dirnew/test_all36_lipid_bacterial_ljpme.out

echo diff_toppar $dirold/test_all36_lipid_cardiolipin.out $dirnew/test_all36_lipid_cardiolipin.out
diff $dirold/test_all36_lipid_cardiolipin.out $dirnew/test_all36_lipid_cardiolipin.out

echo diff_toppar $dirold/test_all36_lipid_cationpi_wyf.out $dirnew/test_all36_lipid_cationpi_wyf.out
diff $dirold/test_all36_lipid_cationpi_wyf.out $dirnew/test_all36_lipid_cationpi_wyf.out

echo diff_toppar $dirold/test_all36_lipid_cholesterol.out $dirnew/test_all36_lipid_cholesterol.out
diff $dirold/test_all36_lipid_cholesterol.out $dirnew/test_all36_lipid_cholesterol.out

echo diff_toppar $dirold/test_all36_lipid_detergent.out $dirnew/test_all36_lipid_detergent.out
diff $dirold/test_all36_lipid_detergent.out $dirnew/test_all36_lipid_detergent.out

echo diff_toppar $dirold/test_all36_lipid_ether.out $dirnew/test_all36_lipid_ether.out
diff $dirold/test_all36_lipid_ether.out $dirnew/test_all36_lipid_ether.out

echo diff_toppar $dirold/test_all36_lipid_ether_ljpme.out $dirnew/test_all36_lipid_ether_ljpme.out
diff $dirold/test_all36_lipid_ether_ljpme.out $dirnew/test_all36_lipid_ether_ljpme.out

echo diff_toppar $dirold/test_all36_lipid_inositol.out $dirnew/test_all36_lipid_inositol.out
diff $dirold/test_all36_lipid_inositol.out $dirnew/test_all36_lipid_inositol.out

echo diff_toppar $dirold/test_all36_lipid.out $dirnew/test_all36_lipid.out
diff $dirold/test_all36_lipid.out $dirnew/test_all36_lipid.out

echo diff_toppar $dirold/test_all36_lipid_ljpme.out $dirnew/test_all36_lipid_ljpme.out
diff $dirold/test_all36_lipid_ljpme.out $dirnew/test_all36_lipid_ljpme.out

echo diff_toppar $dirold/test_all36_lipid_lps.out $dirnew/test_all36_lipid_lps.out
diff $dirold/test_all36_lipid_lps.out $dirnew/test_all36_lipid_lps.out

echo diff_toppar $dirold/test_all36_lipid_main.out $dirnew/test_all36_lipid_main.out
diff $dirold/test_all36_lipid_main.out $dirnew/test_all36_lipid_main.out

echo diff_toppar $dirold/test_all36_lipid_miscellaneous.out $dirnew/test_all36_lipid_miscellaneous.out
diff $dirold/test_all36_lipid_miscellaneous.out $dirnew/test_all36_lipid_miscellaneous.out

echo diff_toppar $dirold/test_all36_lipid_miscellaneous_ljpme.out $dirnew/test_all36_lipid_miscellaneous_ljpme.out
diff $dirold/test_all36_lipid_miscellaneous_ljpme.out $dirnew/test_all36_lipid_miscellaneous_ljpme.out

echo diff_toppar $dirold/test_all36_lipid_model.out $dirnew/test_all36_lipid_model.out
diff $dirold/test_all36_lipid_model.out $dirnew/test_all36_lipid_model.out

echo diff_toppar $dirold/test_all36_lipid_prot.out $dirnew/test_all36_lipid_prot.out
diff $dirold/test_all36_lipid_prot.out $dirnew/test_all36_lipid_prot.out

echo diff_toppar $dirold/test_all36_lipid_sphingo.out $dirnew/test_all36_lipid_sphingo.out
diff $dirold/test_all36_lipid_sphingo.out $dirnew/test_all36_lipid_sphingo.out

echo diff_toppar $dirold/test_all36_lipid_yeast.out $dirnew/test_all36_lipid_yeast.out
diff $dirold/test_all36_lipid_yeast.out $dirnew/test_all36_lipid_yeast.out

echo diff_toppar $dirold/test_all36_lipid_yeast_ljpme.out $dirnew/test_all36_lipid_yeast_ljpme.out
diff $dirold/test_all36_lipid_yeast_ljpme.out $dirnew/test_all36_lipid_yeast_ljpme.out

##misc

echo diff_toppar $dirold/test_all35_ethers.out $dirnew/test_all35_ethers.out
diff $dirold/test_all35_ethers.out $dirnew/test_all35_ethers.out

echo diff_toppar $dirold/test_all36_ions_won.out $dirnew/test_all36_ions_won.out
diff $dirold/test_all36_ions_won.out $dirnew/test_all36_ions_won.out

echo diff_toppar $dirold/test_all36_read_all.out $dirnew/test_all36_read_all.out
diff $dirold/test_all36_read_all.out $dirnew/test_all36_read_all.out

echo diff_toppar $dirold/test_amines.out $dirnew/test_amines.out
diff $dirold/test_amines.out $dirnew/test_amines.out

echo diff_toppar $dirold/test_dum_nobel_gases.out $dirnew/test_dum_nobel_gases.out
diff $dirold/test_dum_nobel_gases.out $dirnew/test_dum_nobel_gases.out

echo diff_toppar $dirold/test_hbond.out $dirnew/test_hbond.out
diff $dirold/test_hbond.out $dirnew/test_hbond.out

echo diff_toppar $dirold/test_print_rtf.out $dirnew/test_print_rtf.out
diff $dirold/test_print_rtf.out $dirnew/test_print_rtf.out

echo diff_toppar $dirold/test_print_rtf.out $dirnew/test_print_rtf.out
diff $dirold/test_print_rtf.out $dirnew/test_print_rtf.out

##na

echo diff_toppar $dirold/test_all36_na.out $dirnew/test_all36_na.out
diff $dirold/test_all36_na.out $dirnew/test_all36_na.out

echo diff_toppar $dirold/test_all36_na_lipid.out $dirnew/test_all36_na_lipid.out
diff $dirold/test_all36_na_lipid.out $dirnew/test_all36_na_lipid.out

echo diff_toppar $dirold/test_all36_na_model.out $dirnew/test_all36_na_model.out
diff $dirold/test_all36_na_model.out $dirnew/test_all36_na_model.out

echo diff_toppar $dirold/test_all36_na_modifications.out $dirnew/test_all36_na_modifications.out
diff $dirold/test_all36_na_modifications.out $dirnew/test_all36_na_modifications.out

echo diff_toppar $dirold/test_all36_na_nad_ppi.out $dirnew/test_all36_na_nad_ppi.out
diff $dirold/test_all36_na_nad_ppi.out $dirnew/test_all36_na_nad_ppi.out

echo diff_toppar $dirold/test_all36_na_reactive_rna.out $dirnew/test_all36_na_reactive_rna.out
diff $dirold/test_all36_na_reactive_rna.out $dirnew/test_all36_na_reactive_rna.out

echo diff_toppar $dirold/test_all36_na_rna_modified.out $dirnew/test_all36_na_rna_modified.out
diff $dirold/test_all36_na_rna_modified.out $dirnew/test_all36_na_rna_modified.out

#non_charmm

echo diff_toppar $dirold/test_non_charmm_amber_cornell.out $dirnew/test_non_charmm_amber_cornell.out
diff $dirold/test_non_charmm_amber_cornell.out $dirnew/test_non_charmm_amber_cornell.out

echo diff_toppar $dirold/test_non_charmm_amber_98.out $dirnew/test_non_charmm_amber_98.out
diff $dirold/test_non_charmm_amber_98.out $dirnew/test_non_charmm_amber_98.out

echo diff_toppar $dirold/test_non_charmm_amber_14.out $dirnew/test_non_charmm_amber_14.out
diff $dirold/test_non_charmm_amber_14.out $dirnew/test_non_charmm_amber_14.out

echo diff_toppar $dirold/test_non_charmm_bms.out $dirnew/test_non_charmm_bms.out
diff $dirold/test_non_charmm_bms.out $dirnew/test_non_charmm_bms.out

echo diff_toppar $dirold/test_non_charmm_opls.out $dirnew/test_non_charmm_opls.out
diff $dirold/test_non_charmm_opls.out $dirnew/test_non_charmm_opls.out

echo diff_toppar $dirold/test_non_charmm_opls_aam.out $dirnew/test_non_charmm_opls_aam.out
diff $dirold/test_non_charmm_opls_aam.out $dirnew/test_non_charmm_opls_aam.out

echo diff_toppar $dirold/test_water_ions_non_charmm_1.out $dirnew/test_water_ions_non_charmm_1.out
diff $dirold/test_water_ions_non_charmm_1.out $dirnew/test_water_ions_non_charmm_1.out

echo diff_toppar $dirold/test_water_ions_non_charmm_2.out $dirnew/test_water_ions_non_charmm_2.out
diff $dirold/test_water_ions_non_charmm_2.out $dirnew/test_water_ions_non_charmm_2.out

echo diff_toppar $dirold/test_water_ions_non_charmm_3.out $dirnew/test_water_ions_non_charmm_3.out
diff $dirold/test_water_ions_non_charmm_3.out $dirnew/test_water_ions_non_charmm_3.out

echo diff_toppar $dirold/test_water_ions_non_charmm_4.out $dirnew/test_water_ions_non_charmm_4.out
diff $dirold/test_water_ions_non_charmm_4.out $dirnew/test_water_ions_non_charmm_4.out

echo diff_toppar $dirold/test_water_ions_non_charmm_5.out $dirnew/test_water_ions_non_charmm_5.out
diff $dirold/test_water_ions_non_charmm_5.out $dirnew/test_water_ions_non_charmm_5.out

echo diff_toppar $dirold/test_water_ions_non_charmm_6.out $dirnew/test_water_ions_non_charmm_6.out
diff $dirold/test_water_ions_non_charmm_6.out $dirnew/test_water_ions_non_charmm_6.out

echo diff_toppar $dirold/test_water_ions_non_charmm_7.out $dirnew/test_water_ions_non_charmm_7.out
diff $dirold/test_water_ions_non_charmm_7.out $dirnew/test_water_ions_non_charmm_7.out

echo diff_toppar $dirold/test_water_ions_non_charmm_8.out $dirnew/test_water_ions_non_charmm_8.out
diff $dirold/test_water_ions_non_charmm_8.out $dirnew/test_water_ions_non_charmm_8.out

echo diff_toppar $dirold/test_water_ions_non_charmm_9.out $dirnew/test_water_ions_non_charmm_9.out
diff $dirold/test_water_ions_non_charmm_9.out $dirnew/test_water_ions_non_charmm_9.out

##prot

echo diff_toppar $dirold/gen_prot_param19.out $dirnew/gen_prot_param19.out
diff $dirold/gen_prot_param19.out $dirnew/gen_prot_param19.out

echo diff_toppar $dirold/test_all22_prot.out $dirnew/test_all22_prot.out
diff $dirold/test_all22_prot.out $dirnew/test_all22_prot.out

echo diff_toppar $dirold/test_all36m_prot.out $dirnew/test_all36m_prot.out
diff $dirold/test_all36m_prot.out $dirnew/test_all36m_prot.out

echo diff_toppar $dirold/test_all36_prot_aldehydes.out $dirnew/test_all36_prot_aldehydes.out
diff $dirold/test_all36_prot_aldehydes.out $dirnew/test_all36_prot_aldehydes.out

echo diff_toppar $dirold/test_all36_prot_arg0.out $dirnew/test_all36_prot_arg0.out
diff $dirold/test_all36_prot_arg0.out $dirnew/test_all36_prot_arg0.out

echo diff_toppar $dirold/test_all36_prot_cofactors.out $dirnew/test_all36_prot_cofactors.out
diff $dirold/test_all36_prot_cofactors.out $dirnew/test_all36_prot_cofactors.out

echo diff_toppar $dirold/test_all36_prot_c36m_d_amino_acids.out $dirnew/test_all36_prot_c36m_d_amino_acids.out
diff $dirold/test_all36_prot_c36m_d_amino_acids.out $dirnew/test_all36_prot_c36m_d_amino_acids.out

echo diff_toppar $dirold/test_all36_prot_fluoro_alkanes.out $dirnew/test_all36_prot_fluoro_alkanes.out
diff $dirold/test_all36_prot_fluoro_alkanes.out $dirnew/test_all36_prot_fluoro_alkanes.out

echo diff_toppar $dirold/test_all36_prot_heme.out $dirnew/test_all36_prot_heme.out
diff $dirold/test_all36_prot_heme.out $dirnew/test_all36_prot_heme.out

echo diff_toppar $dirold/test_all36_prot_lipid.out $dirnew/test_all36_prot_lipid.out
diff $dirold/test_all36_prot_lipid.out $dirnew/test_all36_prot_lipid.out

echo diff_toppar $dirold/test_all36_prot_model.out $dirnew/test_all36_prot_model.out
diff $dirold/test_all36_prot_model.out $dirnew/test_all36_prot_model.out

echo diff_toppar $dirold/test_all36_prot_modify_res.out $dirnew/test_all36_prot_modify_res.out
diff $dirold/test_all36_prot_modify_res.out $dirnew/test_all36_prot_modify_res.out

echo diff_toppar $dirold/test_all36_prot_na_combined.out $dirnew/test_all36_prot_na_combined.out
diff $dirold/test_all36_prot_na_combined.out $dirnew/test_all36_prot_na_combined.out

echo diff_toppar $dirold/test_all36_prot_na.out $dirnew/test_all36_prot_na.out
diff $dirold/test_all36_prot_na.out $dirnew/test_all36_prot_na.out

echo diff_toppar $dirold/test_all36_prot_pyridines.out $dirnew/test_all36_prot_pyridines.out
diff $dirold/test_all36_prot_pyridines.out $dirnew/test_all36_prot_pyridines.out

echo diff_toppar $dirold/test_all36_prot_retinol.out $dirnew/test_all36_prot_retinol.out
diff $dirold/test_all36_prot_retinol.out $dirnew/test_all36_prot_retinol.out


