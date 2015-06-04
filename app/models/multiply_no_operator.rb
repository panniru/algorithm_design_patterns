
def add_no_operator(a, b)
  sum = 0, carryin = 0, k=1
  while(k)
    ak = a&k
    bk = b&k
    carryout = (ak & bk) or (ak & carryin) or (bk&carryin)
    sum = (sum or (ak ^ bk ^ carryin))
    carryin = carryout << 1
    k <<= 1
  end
  sum
end


def multiply_no_operator(x, y)
  sum =0 
  scaled_y = y
  k =1
  while(k)
    if(x&k)
      sum = add_no_operator(sum, scaled_y)
    end
    k <<= 1
    scaled_y <<= 1
  end
  sum
end
