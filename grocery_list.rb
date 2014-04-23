grocery_list = Hash.new

puts "What would like in your grocery list?"
item = gets.chomp
while item != "Exit"
  
  if grocery_list.has_key?(item)
    grocery_list[item] += 1
  else
    grocery_list[item] = 1
  end
  puts "Would you like anything else? If no, type in 'Exit'"
  item = gets.chomp
end
grocery_list.each do |item, number|
  puts "#{item}: #{number}"
end