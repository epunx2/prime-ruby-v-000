require 'benchmark'


# Add  code here!
def prime?(number)
  i = 2
  root = number / i.to_f
  if number == 2
    return true
  elsif number < 0 || number == 1 || number == 0
    return false
  else
    while i <= root
      if number % i == 0
        return false
      end
      root = number / i.to_f
      i += 1
    end
  end
  return true
end

puts Benchmark.measure{prime?(54897354687987351687983516876843465468735687656876873546879876846354687654835168735687543531687987987313546863854368463846846854625846846469464)}
