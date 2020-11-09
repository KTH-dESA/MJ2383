\* Problem: osemosys_short *\

Minimize
 cost: + 999999 NewCapacity(SIMPLICITY,Backstop,2015)
 + 0.0001 NewCapacity(SIMPLICITY,GasExtraction,2015)
 + 1142.93960320974 NewCapacity(SIMPLICITY,NGCC1,2015)
 + 0.936964070030592 NewCapacity(SIMPLICITY,TD,2015)
 + 162682.379477978 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 81292.3947841367 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 162682.379477978 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 81292.3947841367 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 325267.169046252 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 162682.379477978 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,Backstop,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,Backstop,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,Backstop,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,Backstop,2,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,Backstop,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,Backstop,2,2015)
 + 1.30146033728416 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.650339808612902 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 1.30146033728416 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.650339808612902 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 2.60213995450997 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 1.30146033728416 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,GasExtraction,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,GasExtraction,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,GasExtraction,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,GasExtraction,2,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,GasExtraction,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,GasExtraction,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,NGCC1,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,NGCC1,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,NGCC1,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,NGCC1,2,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,NGCC1,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,NGCC1,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,TD,1,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,ID,TD,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,IN,TD,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,SD,TD,2,2015)
 + 8.12924760766128e-06 RateOfActivity(SIMPLICITY,SN,TD,2,2015)
 + 3.25267494313746e-05 RateOfActivity(SIMPLICITY,WD,TD,2,2015)
 + 1.6268254216052e-05 RateOfActivity(SIMPLICITY,WN,TD,2,2015)
 - DiscountedSalvageValue(SIMPLICITY,Backstop,2015)
 - DiscountedSalvageValue(SIMPLICITY,GasExtraction,2015)
 - DiscountedSalvageValue(SIMPLICITY,NGCC1,2015)
 - DiscountedSalvageValue(SIMPLICITY,TD,2015)
 + DiscountedTechnologyEmissionsPenalty(SIMPLICITY,Backstop,2015)
 + DiscountedTechnologyEmissionsPenalty(SIMPLICITY,GasExtraction,2015)
 + DiscountedTechnologyEmissionsPenalty(SIMPLICITY,NGCC1,2015)
 + DiscountedTechnologyEmissionsPenalty(SIMPLICITY,TD,2015)

Subject To
 CAa4_Constraint_Capacity(SIMPLICITY,ID,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,ID,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,ID,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,ID,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,ID,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,ID,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,ID,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + RateOfActivity(SIMPLICITY,ID,TD,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,IN,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,IN,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,IN,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,IN,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,IN,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,IN,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,IN,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + RateOfActivity(SIMPLICITY,IN,TD,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SD,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,SD,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SD,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,SD,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SD,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,SD,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SD,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + RateOfActivity(SIMPLICITY,SD,TD,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SN,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,SN,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SN,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,SN,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SN,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,SN,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,SN,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + RateOfActivity(SIMPLICITY,SN,TD,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WD,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,WD,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WD,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,WD,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WD,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,WD,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WD,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + RateOfActivity(SIMPLICITY,WD,TD,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WN,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + RateOfActivity(SIMPLICITY,WN,Backstop,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WN,GasExtraction,2015):
 - NewCapacity(SIMPLICITY,GasExtraction,2015)
 + RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 + RateOfActivity(SIMPLICITY,WN,GasExtraction,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WN,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 + RateOfActivity(SIMPLICITY,WN,NGCC1,2,2015) <= -0
 CAa4_Constraint_Capacity(SIMPLICITY,WN,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + RateOfActivity(SIMPLICITY,WN,TD,1,2015)
 + RateOfActivity(SIMPLICITY,WN,TD,2,2015) <= -0
 CAb1_PlannedMaintenance(SIMPLICITY,Backstop,2015):
 - 31.536 NewCapacity(SIMPLICITY,Backstop,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,2,2015) <= -0
 CAb1_PlannedMaintenance(SIMPLICITY,GasExtraction,2015):
 - 1 NewCapacity(SIMPLICITY,GasExtraction,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,2,2015) <= -0
 CAb1_PlannedMaintenance(SIMPLICITY,NGCC1,2015):
 - 31.536 NewCapacity(SIMPLICITY,NGCC1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,2,2015) <= -0
 CAb1_PlannedMaintenance(SIMPLICITY,TD,2015):
 - 31.536 NewCapacity(SIMPLICITY,TD,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,2,2015) <= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,ID,FEL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,ID,TD,1,2015) >= 0.26568
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,ID,GAS,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,ID,SEC_EL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,ID,TD,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,IN,FEL,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 0.079135 RateOfActivity(SIMPLICITY,IN,TD,1,2015) >= 0.17712
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,IN,GAS,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 - 0.1659336 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,IN,SEC_EL,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 - 0.0833 RateOfActivity(SIMPLICITY,IN,TD,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SD,FEL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,SD,TD,1,2015) >= 0.3321
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SD,GAS,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SD,SEC_EL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,SD,TD,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SN,FEL,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 0.079135 RateOfActivity(SIMPLICITY,SN,TD,1,2015) >= 0.1107
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SN,GAS,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 - 0.1659336 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,SN,SEC_EL,2015):
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 - 0.0833 RateOfActivity(SIMPLICITY,SN,TD,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WD,FEL,2015):
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 0.316635 RateOfActivity(SIMPLICITY,WD,TD,1,2015) >= 0.8856
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WD,GAS,2015):
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 - 0.6639336 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WD,SEC_EL,2015):
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 - 0.3333 RateOfActivity(SIMPLICITY,WD,TD,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WN,FEL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,WN,TD,1,2015) >= 0.4428
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WN,GAS,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015) >= -0
 EBa11_EnergyBalanceEachTS5(SIMPLICITY,WN,SEC_EL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,WN,TD,1,2015) >= -0
 EBb4_EnergyBalanceEachYear4(SIMPLICITY,FEL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + 0.079135 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + 0.079135 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + 0.316635 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + 0.158365 RateOfActivity(SIMPLICITY,WN,TD,1,2015) >= -0
 EBb4_EnergyBalanceEachYear4(SIMPLICITY,GAS,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 - 0.1659336 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 - 0.1659336 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 - 0.6639336 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 - 0.3320664 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015) >= -0
 EBb4_EnergyBalanceEachYear4(SIMPLICITY,SEC_EL,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 - 0.0833 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 - 0.0833 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 - 0.3333 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 - 0.1667 RateOfActivity(SIMPLICITY,WN,TD,1,2015) >= -0
 SV1_SalvageValueAtEndOfPeriod1(SIMPLICITY,NGCC1,2015):
 - 1083.4434214117 NewCapacity(SIMPLICITY,NGCC1,2015)
 + SalvageValue(SIMPLICITY,NGCC1,2015) = -0
 SV1_SalvageValueAtEndOfPeriod1(SIMPLICITY,TD,2015):
 - 9.95223264514264e-05 NewCapacity(SIMPLICITY,TD,2015)
 + SalvageValue(SIMPLICITY,TD,2015) = -0
 SV3_SalvageValueAtEndOfPeriod3(SIMPLICITY,Backstop,2015):
 + SalvageValue(SIMPLICITY,Backstop,2015) = -0
 SV3_SalvageValueAtEndOfPeriod3(SIMPLICITY,GasExtraction,2015):
 + SalvageValue(SIMPLICITY,GasExtraction,2015) = -0
 SV4_SalvageValueDiscountedToStartYear(SIMPLICITY,Backstop,2015):
 - 0.952380952380952 SalvageValue(SIMPLICITY,Backstop,2015)
 + DiscountedSalvageValue(SIMPLICITY,Backstop,2015) = -0
 SV4_SalvageValueDiscountedToStartYear(SIMPLICITY,GasExtraction,2015):
 - 0.952380952380952 SalvageValue(SIMPLICITY,GasExtraction,2015)
 + DiscountedSalvageValue(SIMPLICITY,GasExtraction,2015) = -0
 SV4_SalvageValueDiscountedToStartYear(SIMPLICITY,NGCC1,2015):
 - 0.952380952380952 SalvageValue(SIMPLICITY,NGCC1,2015)
 + DiscountedSalvageValue(SIMPLICITY,NGCC1,2015) = -0
 SV4_SalvageValueDiscountedToStartYear(SIMPLICITY,TD,2015):
 - 0.952380952380952 SalvageValue(SIMPLICITY,TD,2015)
 + DiscountedSalvageValue(SIMPLICITY,TD,2015) = -0
 TCC1_TotalAnnualMaxCapacityConstraint(SIMPLICITY,Backstop,2015):
 + NewCapacity(SIMPLICITY,Backstop,2015) <= 99999
 TCC1_TotalAnnualMaxCapacityConstraint(SIMPLICITY,GasExtraction,2015):
 + NewCapacity(SIMPLICITY,GasExtraction,2015) <= 6
 TCC1_TotalAnnualMaxCapacityConstraint(SIMPLICITY,NGCC1,2015):
 + NewCapacity(SIMPLICITY,NGCC1,2015) <= 99999
 TCC1_TotalAnnualMaxCapacityConstraint(SIMPLICITY,TD,2015):
 + NewCapacity(SIMPLICITY,TD,2015) <= 99999
 NCC1_TotalAnnualMaxNewCapacityConstraint(SIMPLICITY,Backstop,2015):
 + NewCapacity(SIMPLICITY,Backstop,2015) <= 99999
 NCC1_TotalAnnualMaxNewCapacityConstraint(SIMPLICITY,GasExtraction,2015):
 + NewCapacity(SIMPLICITY,GasExtraction,2015) <= 99999
 NCC1_TotalAnnualMaxNewCapacityConstraint(SIMPLICITY,NGCC1,2015):
 + NewCapacity(SIMPLICITY,NGCC1,2015) <= 99999
 NCC1_TotalAnnualMaxNewCapacityConstraint(SIMPLICITY,TD,2015):
 + NewCapacity(SIMPLICITY,TD,2015) <= 99999
 AAC2_TotalAnnualTechnologyActivityUpperLimit(SIMPLICITY,Backstop,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,2,2015) <= 99999
 AAC2_TotalAnnualTechnologyActivityUpperLimit(SIMPLICITY,GasExtraction,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,2,2015) <= 99999
 AAC2_TotalAnnualTechnologyActivityUpperLimit(SIMPLICITY,NGCC1,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,2,2015) <= 99999
 AAC2_TotalAnnualTechnologyActivityUpperLimit(SIMPLICITY,TD,2015):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,2,2015) <= 99999
 TAC2_TotalModelHorizonTechnologyActivityUpperLimit(SIMPLICITY,Backstop):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,Backstop,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,Backstop,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,Backstop,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,Backstop,2,2015) <= 99999
 TAC2_TotalModelHorizonTechnologyActivityUpperLimit(SIMPLICITY,GasExtraction):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,GasExtraction,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,GasExtraction,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,GasExtraction,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,GasExtraction,2,2015) <= 125
 TAC2_TotalModelHorizonTechnologyActivityUpperLimit(SIMPLICITY,NGCC1):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,NGCC1,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,NGCC1,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,NGCC1,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,NGCC1,2,2015) <= 99999
 TAC2_TotalModelHorizonTechnologyActivityUpperLimit(SIMPLICITY,TD):
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,1,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,1,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,1,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,ID,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,IN,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,SD,TD,2,2015)
 + 0.0833 RateOfActivity(SIMPLICITY,SN,TD,2,2015)
 + 0.3333 RateOfActivity(SIMPLICITY,WD,TD,2,2015)
 + 0.1667 RateOfActivity(SIMPLICITY,WN,TD,2,2015) <= 99999
 RM3_ReserveMargin_Constraint(SIMPLICITY,ID,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RM3_ReserveMargin_Constraint(SIMPLICITY,IN,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RM3_ReserveMargin_Constraint(SIMPLICITY,SD,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RM3_ReserveMargin_Constraint(SIMPLICITY,SN,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RM3_ReserveMargin_Constraint(SIMPLICITY,WD,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RM3_ReserveMargin_Constraint(SIMPLICITY,WN,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 RE4_EnergyConstraint(SIMPLICITY,2015): 0 NewCapacity(SIMPLICITY,Backstop,2015)
 <= -0
 E5_DiscountedEmissionsPenaltyByTechnology(SIMPLICITY,Backstop,2015):
 - DiscountedTechnologyEmissionsPenalty(SIMPLICITY,Backstop,2015) = -0
 E5_DiscountedEmissionsPenaltyByTechnology(SIMPLICITY,GasExtraction,2015):
 - DiscountedTechnologyEmissionsPenalty(SIMPLICITY,GasExtraction,2015)
 = -0
 E5_DiscountedEmissionsPenaltyByTechnology(SIMPLICITY,NGCC1,2015):
 - DiscountedTechnologyEmissionsPenalty(SIMPLICITY,NGCC1,2015) = -0
 E5_DiscountedEmissionsPenaltyByTechnology(SIMPLICITY,TD,2015):
 - DiscountedTechnologyEmissionsPenalty(SIMPLICITY,TD,2015) = -0
 E8_AnnualEmissionsLimit(SIMPLICITY,CO2,2015):
 + 0.008335 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.004165 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.008335 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.004165 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.016665 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.008335 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015) <= 99999
 E9_ModelPeriodEmissionsLimit(SIMPLICITY,CO2):
 + 0.008335 RateOfActivity(SIMPLICITY,ID,GasExtraction,1,2015)
 + 0.004165 RateOfActivity(SIMPLICITY,IN,GasExtraction,1,2015)
 + 0.008335 RateOfActivity(SIMPLICITY,SD,GasExtraction,1,2015)
 + 0.004165 RateOfActivity(SIMPLICITY,SN,GasExtraction,1,2015)
 + 0.016665 RateOfActivity(SIMPLICITY,WD,GasExtraction,1,2015)
 + 0.008335 RateOfActivity(SIMPLICITY,WN,GasExtraction,1,2015) <= 999999

End
