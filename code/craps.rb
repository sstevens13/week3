def roll
  puts
  print "Press ENTER to roll...."
  gets
  dice = rand(1..12)
  puts "You rolled #{dice}."
  dice
end

puts "Here comes your first roll."
puts "If it's a 7 or 11, you win instantly."
puts "If you roll a 2, 3, or 12, you lose instantly."
puts "If it's anything else, that will become your 'point' that you must try to roll again."

point = roll

if point == 7 || point == 11
  puts "You win!"
elsif point == 2 || point == 3 || point == 12
  puts "You lose!"
else
  puts "Your point is #{point}.  Try to roll it again."

  attempt = nil
  until attempt == point || attempt == 7 || attempt == 11
    attempt = roll
  end

  if attempt == point
    puts "You win!" 
  else
    puts "You lose"
  end
end
