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
D = Demand.loc[Demand.FUEL == 'FEL']
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

for x in ProductionData:
    if x == 'NGCC':
        NGCC = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(D.YEAR, D.VALUE)
plt.xlabel('Years')
plt.ylabel('Demand')

fig1 = plt.stackplot(Years, NGCC.VALUE, B.VALUE, labels=['NGCC', 'Backstop'])
plt.legend(loc='upper left')

NGCC = pd.DataFrame()
B = pd.DataFrame()
SOLPV = pd.DataFrame()
WIND = pd.DataFrame()

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

for x in ProductionData:
    if x == 'NGCC':
        NGCC = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(D.YEAR, D.VALUE)
plt.xlabel('Years')
plt.ylabel('Demand')

fig2 = plt.stackplot(Years, NGCC.VALUE, SOLPV.VALUE, B.VALUE, labels=['NGCC', 'SOLPV', 'Backstop'])
plt.legend(loc='upper left')

NGCC = pd.DataFrame()
B = pd.DataFrame()
SOLPV = pd.DataFrame()
WIND = pd.DataFrame()

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

for x in ProductionData:
    if x == 'NGCC':
        NGCC = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(D.YEAR, D.VALUE)
plt.xlabel('Years')
plt.ylabel('Demand')

fig3 = plt.stackplot(Years, NGCC.VALUE, WIND.VALUE, labels=['NGCC', 'WIND'])
plt.legend(loc='upper left')

NGCC = pd.DataFrame()
B = pd.DataFrame()
SOLPV = pd.DataFrame()
WIND = pd.DataFrame()

#%% Plots

for x in ProductionData:
    if x == 'NGCC':
        NGCC = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(D.YEAR, D.VALUE)
plt.xlabel('Years')
plt.ylabel('Demand')

a = plt.stackplot(Years, NGCC.VALUE, B.VALUE, labels=['NGCC', 'Backstop'])
b = plt.stackplot(Years, NGCC.VALUE, SOLPV.VALUE, B.VALUE, labels=['NGCC', 'SOLPV', 'Backstop'])
c = plt.stackplot(Years, NGCC.VALUE, SOLPV.VALUE, WIND.VALUE, B.VALUE, labels=['NGCC', 'SOLPV', 'WIND', 'Backstop'])

plt.legend(loc='upper left')
#%%
# if __name__ == "__main__":
#     main(sys.argv[1,2])