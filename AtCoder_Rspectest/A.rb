n, m = gets.split.map(&:to_i)

if 500 * n >= m
  puts "Yes"
else
  puts "No"
end
