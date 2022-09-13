import numpy as np
import sys
from IPython.display import display, Markdown, Latex

def checker_df(value, discount_rate, years):
    """Checks if the values of the discount factor are correct based on the discount rate and years array as inputs.
    
    Parameters
    ----------
    value: np.ndarray
        Array of discount factors over the years.
    discount_rate: float
        Discount rate as fraction.
    years: np.ndarray
        Array of years over the analysis period.
        
    Returns
    -------
    str
        Displays wheter the calculated value is correct or not.
    """
    df = (1 + discount_rate) ** -years
    if isinstance(value, np.ndarray):
        if len(value) != len(years):
            return print("The length of your array should be the same as the number of years.")
        elif sum(df == value) == len(df):
            return print("Your answer is correct!")
        else:
            return print("The values provided are not correct. They should be:\n{}".format(
                df
            ))
    else:
        return display(Markdown("The argument `df` needs to be of type `np.array()`"))


def checker_lcoe(
    value,
    capital_costs,
    operational_costs,
    electricity_generation,
    discount_rate,
    technical_lifetime
):
    """Checks if the calculated lcoe value is correct based on the capital costs, operational costs, electricity generation, discount rate and technical lifetime of the project.
    
    Parameters
    ----------
    value: float
        Calculated lcoe value to check.
    capital_costs: float
        Capital costs of the project.
    operational_costs: np.ndarray
        Array of operational costs over the analysis period.
    electricity_generation: np.ndarray
        Array of generated electricity over the analysis period.
    discount_rate: float
        Discount rate as fraction.
    technical_lifetime: int
        Years of the analysis period.
    
    Returns
    -------
    str
        Displays wheter the calculated value is correct or not.
    """
    try:
        if isinstance(value, float):
            year = np.arange(technical_lifetime)
            df = (1 + discount_rate) ** - year
            lcoe = (capital_costs + sum(df * operational_costs)) / \
                   sum(df * electricity_generation)
            if value == lcoe:
                return print("Your answer is correct!")
            else:
                return print("That is not right, try again!")
        else:
            return display(Markdown("The argument `lcoe` needs to be of type `float`"))
    except:
        return print("Unexpected error: {}".format(sys.exc_info()[0]))
        raise


def checker_parameters(
    el_gen,
    op_costs,
    capacity,
    load_factor,
    fixed_om_cost,
    fuel_price,
    efficiency,
    lifetime
):
    """Checks if the electricity calculations and the operational costs are calculated correctly.
    
    Parameters
    ----------
    el_gen: np.ndarray
        Array of generated electricity over the analysis period.
    op_costs: np.ndarray
        Array of operational costs over the analysis period.
    capacit: float
        Installed capacity of the plant.
    load_factor: float
        The load factor describes the proportion of those 8760 hours the plant is operational.
    fixed_om_cost: float
        Fix costs of the power plant per kW of capacity.
    fuel_price: float
        Fuel price per kWh used.
    efficiency: float
        Energy convertion efficiency of the plant.
    lifetime: int
        Years of the analysis period.
    
    Returns
    -------
    str
        Displays wheter the calculated value is correct or not.
    """
    electricity_generation = np.repeat(capacity * load_factor * 8760, lifetime) # in kWh
    annual_fixed_om_cost = capacity * fixed_om_cost # in €
    annual_variable_om_cost = fuel_price * electricity_generation / efficiency # in €
    operational_costs = annual_fixed_om_cost + annual_variable_om_cost # in €

    try:
        if sum(el_gen) == sum(electricity_generation):
            str_out = 'Your electricity generation is correct!\n'
        else:
            str_out = f'Your electricity generation is not right... it should be {electricity_generation}\n'
        if sum(op_costs) == sum(operational_costs):
            str_out += 'Your operational costs are correct!'
        else:
            str_out += f'Your operational costs are not right... they should be {operational_costs}'
        return print(str_out)
    except:
        return print("Unexpected error: {}".format(sys.exc_info()[0]),
                     'Make sure your electricity generation and operational values are of type np.ndarray')
        raise
