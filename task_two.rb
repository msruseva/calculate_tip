def calculate_tip(amount, tip)
  total_amount = amount + amount * tip / 100
  tip_amount = amount * tip / 100
  puts "Total amount with tip:" + total_amount.to_s
  puts "Tip amount:" + tip_amount.to_s
end

if ARGV.length == 4 and /--amount/.match(ARGV[0]) and /--tip/.match(ARGV[2])
  amount = Float(ARGV[1])
  tip = Float(ARGV[3])
  calculate_tip(amount, tip)
else
  raise ArgumentError
end
