a = 1
b = a + 1
c = 1000 - (a + b)

catch(:found) do
  loop do
    while c > b
      a**2 + b**2 == c**2 ? throw(:found) : nil
      c -= 1
      b += 1
    end
    a += 1
    b = a + 1
    c = 1000 - (a + b)
  end
end

puts a * b * c
