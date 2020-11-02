import numpy as np
import sys


def checker_crf(value, discount_rate, year):
    crf = (1 + discount_rate) ** -year
    if len(value) != len(year):
        return "The length of your array should be the same as the number of years."
    if isinstance(value, np.ndarray):
        if sum(crf == value) == len(crf):
            return "Your answer is correct!"
        else:
            return "The values provided are not correct. They should be:\n{}".format(
                crf
            )
    else:
        return "The argument `value` needs to be `np.array()`"


def checker_lcoe(
    value,
    capital_costs,
    operational_costs,
    electricity_generation,
    discount_rate,
    technical_lifetime,
):
    try:
        year = np.arange(technical_lifetime)
        crf = (1 + discount_rate) ** -year
        lcoe = (capital_costs + sum(crf * operational_costs)) / sum(
            crf * electricity_generation
        )
        if value == lcoe:
            return "Your answer is correct!"
        else:
            return "That is not right, try again!"
    except:
        return "Unexpected error: {}".format(sys.exc_info()[0])
        raise
