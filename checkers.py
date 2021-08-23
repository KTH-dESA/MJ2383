import numpy as np
import sys
from IPython.display import display, Markdown, Latex

def checker_df(value, discount_rate, year):
    df = (1 + discount_rate) ** -year
    if isinstance(value, np.ndarray):
        if len(value) != len(year):
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
    technical_lifetime,
):
    try:
        if isinstance(value, float):
            year = np.arange(technical_lifetime)
            df = (1 + discount_rate) ** -year
            lcoe = (capital_costs + sum(df * operational_costs)) / sum(
                df * electricity_generation
            )
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
    efficiency
):
    electricity_generation = capacity * load_factor * 8760 # in kWh
    annual_fixed_om_cost = capacity * fixed_om_cost # in €
    annual_variable_om_cost = fuel_price * electricity_generation / efficiency # in €
    operational_costs = annual_fixed_om_cost + annual_variable_om_cost # in €

    try:
        if el_gen == electricity_generation:
            str_out = 'Your electricity generation is correct!\n'
        else:
            str_out = f'Your electricity generation is not right... it should be {electricity_generation}\n'
        if op_costs == operational_costs:
            str_out += 'Your operational costs are correct!'
        else:
            str_out += f'Your operational costs are not right... they should be {operational_costs}'
        return print(str_out)
    except:
        return print("Unexpected error: {}".format(sys.exc_info()[0]),
                     'Make sure your electricity generation and operational values are of type float')
        raise
