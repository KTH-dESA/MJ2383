"""
Results visualisation for the SimpleEnergyModel - MJ2383
"""
#%%
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
import os

#%%
# import sys
# def main(filepath1, filepath2):
#%%
path = os.path.join('SimpleEnergyModel', 'SimpleEnergyModel_Gas', 'data', 'SpecifiedAnnualDemand.csv')
Demand = pd.read_csv(path)
## Demand
D = Demand.loc[Demand.FUEL == 'FEL']
Years = Demand.YEAR.unique() 

#%%
# SimpleEnergyModel_Gas
path = os.path.join('SimpleEnergyModel', 'SimpleEnergyModel_Gas', 'results', 'ProductionByTechnologyAnnual.csv')
Production = pd.read_csv(path)

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

path = os.path.join('SimpleEnergyModel', 'SimpleEnergyModel_Gas', 'results', 'ProductionByTechnologyAnnual.csv')
Production = pd.read_csv(path)

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

fig2 = plt.stackplot(Years, NGCC['VALUE'], SOLPV['VALUE'], B['VALUE'], labels=['NGCC', 'SOLPV', 'Backstop'])
plt.legend(loc='upper left')

NGCC = pd.DataFrame()
B = pd.DataFrame()
SOLPV = pd.DataFrame()
WIND = pd.DataFrame()

#%%
# SimpleEnergyModel_GasSolarWind
path = os.path.join('SimpleEnergyModel', 'SimpleEnergyModel_GasSolarWind', 'results', 'ProductionByTechnologyAnnual.csv')
Production = pd.read_csv(path)

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