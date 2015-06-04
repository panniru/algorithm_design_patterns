def devide_x_y(x, y)
  if(x < y)
    return 0
  end
  power = 0
  while(((1 << power)*y) <= x)
    power +=1
  end
  part = 1 << (power-1)
  return (part + devide_x_y(x-(part*y), y))
end
