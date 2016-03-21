CURRENCIES = ["USD", "EUR", "GBP", "INR", "AUD", "CHF"]

def calculate_tip(value, tip)
  value * tip / 100
end

def calculate_total_amount(value, tip)
  value + value * tip / 100
end

puts "Please provide amount:"
amount = gets.split(" ")

value = Float(amount.first)
currency = amount.last

if CURRENCIES.include? currency
  puts "Please provide tip:"
  tip = Float(gets)

  tip_amount = calculate_tip(value, tip)
  total_amount = calculate_total_amount(value, tip)

  puts "Total amount with tip:" + total_amount.to_s + " " + currency
  puts "Tip amount:" + tip_amount.to_s + " " + currency
else
  puts "Invalid currency."
end
