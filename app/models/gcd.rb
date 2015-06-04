## Compute GCD of two numbers without using /, *, %

def even?(num)
  num&1 == 0
end

def odd?(num)
  num&1 == 1
end

def gcd(x,y)
  if(x ==0 )
    return y
  elsif( y ==0)
    return x
  elsif(even?(x) and even?(y))
    (gcd(x>>1, y >> 1) << 1)
  elsif(odd?(x) and even?(y))
    gcd(x, (y >> 1))
  elsif(even?(x) and odd?(y))
    gcd((x >> 1), y)
  elsif(x <= y)
    gcd(y, y-x)
  else
    gcd(x-y, y)
  end
end
