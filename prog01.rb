# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

### 分担3
# draw func
frame[0][8] = "y"
frame[0][9] = "="
a= $func.split(//u).length
j = 0
for i in 10..10+a-1 do
  frame[0][i] = $func[j]
  j = j + 1
  i = i + 1
end
###


# draw graph
for x in 0..79 do
###
### 分担2
  yh1 = 24 * (f(x) - f(0))/(f(79) - f(0))
##  a = 24 * (f(x) - f(0)) / x
##  yh = yh1 * a / 24 
  yt = 24 * f(0)
  y = 24 - (yh + yt)
  frame[y][x] = '*'
###
end

# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end

