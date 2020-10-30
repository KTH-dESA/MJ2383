"""
Results visualisation for the SimpleEnergyModel - MJ2383
"""
#%%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#%%
# import sys
# def main(filepath1, filepath2):
#%%
Demand = pd.read_csv('SimpleEnergyModel_Gas/data/SpecifiedAnnualDemand.csv')
## Demand
D1 = Demand.loc[Demand.FUEL == 'FEL1']
D2 = Demand.loc[Demand.FUEL == 'FEL2']

Years = Demand.YEAR.unique() 

#%%
# SimpleEnergyModel_Gas
Production = pd.read_csv('SimpleEnergyModel_Gas/results/ProductionByTechnologyAnnual.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('YEAR').reindex(Years).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data
#%%
# SimpleEnergyModel_GasSolar
Production = pd.read_csv('SimpleEnergyModel_GasSolar/results/ProductionByTechnologyAnnual.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('YEAR').reindex(Years).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data
#%%
# SimpleEnergyModel_GasSolarWind
Production = pd.read_csv('SimpleEnergyModel_GasSolarWind/results/ProductionByTechnologyAnnual.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('YEAR').reindex(Years).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data
#%% Plots

for x in ProductionData:
    if x == 'NGCC':
        NGCC = ProductionData[x]
    if x == 'Backstop1':
        B1 = ProductionData[x]
    if x == 'Backstop2':
        B2 = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(D1.YEAR, D1.VALUE)
plt.plot(D2.YEAR, D2.VALUE)
plt.xlabel('Years')
plt.ylabel('Demand')

plt.stackplot(Years, NGCC.VALUE, SOLPV.VALUE, WIND.VALUE, labels=['NGCC', 'SOLPV', 'WIND'])
plt.legend(loc='upper left')
#%%
# if __name__ == "__main__":
#     main(sys.argv[1,2])