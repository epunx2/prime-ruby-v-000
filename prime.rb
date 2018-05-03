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

puts Benchmark.measure{prime?(548973546879873516879835168768434654687356876568768735468798768463546876548351687356875435316879879873135468638543684638468468546258468464694641)}
