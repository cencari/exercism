function exchange_money(budget, exchange_rate)
    budget/exchange_rate
end

function get_change(budget, exchanging_value)
    budget-exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    denomination*number_of_bills
end

function get_number_of_bills(amount, denomination)
    floor(amount/denomination)
end

function get_leftover_of_bills(amount, denomination)
    amount - get_number_of_bills(amount, denomination) * denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    exchange_rate = exchange_rate*(1 + spread/100)
    amount = exchange_money(budget, exchange_rate)
    get_number_of_bills(amount, denomination) * denomination
end
