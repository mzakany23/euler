
def find_multiple
  lcm = 1

  (2..20).each do |i|
    lcm *= i / gcd(lcm, i)
  end

  lcm
end

def gcd(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end

  a
end

puts find_multiple
