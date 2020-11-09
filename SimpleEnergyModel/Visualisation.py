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
Demand = pd.read_csv('SimpleEnergyModel_Gas1/data/SpecifiedAnnualDemand.csv')
DemandProfile = pd.read_csv('SimpleEnergyModel_Gas1/data/SpecifiedDemandProfile.csv')
TimeSlices = ['SD', 'SN', 'ID', 'IN', 'WD', 'WN'] #DemandProfile.TIMESLICE.unique()

# Total Demand per TimeSlice
for i in DemandProfile.index:
    DemandProfile['VALUE'][i] = (Demand.VALUE) * DemandProfile['VALUE'][i]
DemandProfile=DemandProfile.set_index('TIMESLICE').reindex(TimeSlices).reset_index()

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

#%%
# SimpleEnergyModel_Gas1
Production = pd.read_csv('SimpleEnergyModel_Gas1/results/ProductionByTechnology.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('TIMESLICE').reindex(TimeSlices).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data

for x in ProductionData:
    if x == 'NGCC1':
        NGCC1 = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

fig1 = plt.stackplot(TimeSlices, NGCC1.VALUE, labels=['NGCC1'])
plt.legend(loc='upper left')

#%%
# SimpleEnergyModel_Gas2
Production = pd.read_csv('SimpleEnergyModel_Gas2/results/ProductionByTechnology.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('TIMESLICE').reindex(TimeSlices).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data

for x in ProductionData:
    if x == 'GasExtraction':
        GasEx = ProductionData[x]
    if x == 'GasImport1':
        GasImp1 = ProductionData[x]
    if x == 'GasImport2':
        GasImp2 = ProductionData[x]
    if x == 'NGCC1':
        NGCC1 = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

fig1 = plt.stackplot(TimeSlices, NGCC1.VALUE, labels=['NGCC1'])
fig1 = plt.legend(loc='upper left')

fig2 = plt.stackplot(TimeSlices, GasEx.VALUE, GasImp1.VALUE, labels=['GasExtraction', 'GasImport1'])
fig2 = plt.legend(loc='upper left')

#%%
# SimpleEnergyModel_Gas3
Production = pd.read_csv('SimpleEnergyModel_Gas3/results/ProductionByTechnology.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('TIMESLICE').reindex(TimeSlices).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data

for x in ProductionData:
    if x == 'GasExtraction':
        GasEx = ProductionData[x]
    if x == 'GasImport1':
        GasImp1 = ProductionData[x]
    if x == 'GasImport2':
        GasImp2 = ProductionData[x]
    if x == 'NGCC1':
        NGCC1 = ProductionData[x]
    if x == 'NGCC2':
        NGCC2 = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

fig1 = plt.stackplot(TimeSlices, NGCC2.VALUE, labels=['NGCC2'])
fig1 = plt.legend(loc='upper left')

fig2 = plt.stackplot(TimeSlices, GasEx.VALUE, GasImp1.VALUE, labels=['GasExtraction', 'GasImport1'])
fig2 = plt.legend(loc='upper left')

#%%
# SimpleEnergyModel_GasSolar
Production = pd.read_csv('SimpleEnergyModel_GasSolar/results/ProductionByTechnology.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('TIMESLICE').reindex(TimeSlices).reset_index().fillna(0)
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

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

fig2 = plt.stackplot(TimeSlices, NGCC.VALUE, SOLPV.VALUE, B.VALUE, labels=['NGCC', 'SOLPV', 'Backstop'])
plt.legend(loc='upper left')

#%%
# SimpleEnergyModel_GasSolarWind
Production = pd.read_csv('SimpleEnergyModel_GasSolarWind/results/ProductionByTechnology.csv')

## Production By Technology Annual
ProductionData = {}
for i in Production.TECHNOLOGY.unique():
    data = Production.loc[Production.TECHNOLOGY == i]
    Region = data.REGION.unique()
    Technology = data.TECHNOLOGY.unique()
    Fuel = data.FUEL.unique()
    if len(data.index)<27:
        data=data.set_index('TIMESLICE').reindex(TimeSlices).reset_index().fillna(0)
        data.loc[data.VALUE == 0, 'REGION'] = Region[0]
        data.loc[data.VALUE == 0, 'TECHNOLOGY'] = Technology[0]
        data.loc[data.VALUE == 0, 'FUEL'] = Fuel[0]
    ProductionData[i] = data

for x in ProductionData:
    if x == 'GasExtraction':
        GasEx = ProductionData[x]
    if x == 'GasImport1':
        GasImp1 = ProductionData[x]
    if x == 'GasImport2':
        GasImp2 = ProductionData[x]
    if x == 'NGCC1':
        NGCC1 = ProductionData[x]
    if x == 'NGCC2':
        NGCC2 = ProductionData[x]
    if x == 'Backstop':
        B = ProductionData[x]
    if x == 'SOLPV':
        SOLPV = ProductionData[x]
    if x == 'WIND':
        WIND = ProductionData[x]

plt.plot(DemandProfile.TIMESLICE, DemandProfile.VALUE)
plt.xlabel('Timeslices')
plt.ylabel('Demand')

fig3 = plt.stackplot(TimeSlices, NGCC2.VALUE, labels=['NGCC2'])
fig3 = plt.legend(loc='upper left')
fig4 = plt.stackplot(TimeSlices, GasEx.VALUE, GasImp1.VALUE, labels=['GasExtraction', 'GasImport1'])
fig4 = plt.legend(loc='upper left')

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