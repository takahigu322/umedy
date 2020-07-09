# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# n = gets.split.map(&:to_i)

n, m = gets.split.map(&:to_i)

if 500 * n >= m
  puts "Yes"
else
  puts "No"
end
