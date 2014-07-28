def calc_words (problem)
  problem = problem.split(" ")
  numbers = []

  problem.delete_if { |i| i == "by"}
  problem.delete_if { |i| i == "what"}
  problem.delete_if { |i| i == "is"}
  problem.delete_if { |i| i == "?"}
  problem.delete_if { |i| i == "to"}
  problem.delete_if { |i| i == "the"}
  problem.delete_if { |i| i == "of"}

  problem.each_with_index do |item, index|
    if index.even?
      numbers << item.to_f
    else
      numbers << item
    end
  end

  total = 0

  total = total + numbers[0]

  numbers = numbers[1..-1]

  numbers.each_with_index do |item, index|
    if item == "plus"
      total += numbers[index + 1]
    elsif item == "divided"
      total /= numbers[index + 1]
    elsif item == "times"
      total *= numbers[index + 1]
    elsif item == "minus"
      total -= numbers[index + 1]
    elsif item == "power"
      total = total ** numbers[index + 1]
    end
  end
  total

end
calc_words("6 plus 4")
puts calc_words("what is 4 to the power of 3?")
