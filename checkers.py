import numpy as np


def checker_crf(value, discount_rate, year):
    crf = (1 + discount_rate) ** - year
    if isinstance(value, np.ndarray):
        if sum(crf == value) == len(crf):
            return 'Your answer is correct!'
        else:
            return f'That is not right, try again!'
    else:
        return f'That is not right, try again!'
        
def checker_lcoe(value, capital_costs, operational_costs, electricity_generation, discount_rate, technical_lifetime):
    try:
        year = np.arange(technical_lifetime)
        crf = (1 + discount_rate) ** - year
        lcoe = (capital_costs + sum(crf * operational_costs)) / sum(crf * electricity_generation)
        if value == lcoe:
            return 'Your answer is correct!'
        else:
            return f'That is not right, try again!'
    except:
        return f'That is not right, try again!'