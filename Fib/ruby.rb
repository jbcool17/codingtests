def output_fib1(n)
   x, y = 0,1
   0.upto(n) { puts x; x += y; x, y = y, x}
end

def output_fib2(n)
  (1..n).inject([0,1]) { |f| f << f.last(2).inject(:+) }
end
