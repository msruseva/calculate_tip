def calculate(amount, tip)
  total_amount = amount + amount * tip / 100
  tip_amount = amount * tip / 100
  puts "Total amount with tip:" + total_amount.to_s
  puts "Tip amount:" + tip_amount.to_s
end

if ARGV.length != 0
  raise ArgumentError
else
  puts "Please provide amount: "
  amount = Float(gets)

  puts "Please provide tip: "
  tip = Float(gets)

  calculate(amount, tip)
end

