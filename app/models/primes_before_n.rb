###### Plain way As I know ######### 

def primes_before_n(n)
  n.times.select{|int| prime?int}
end


def prime?(n)
  if n < 2
    return false
  elsif n == 2
    return true
  else
    i = 2
    sqrt = Math.sqrt(n).to_i
    while i <= sqrt
      if(n%i == 0)
        return false
      end
      i += 1
    end
    return true
  end
end


############## END OF PLAIN WAY ###########


### Aproach By EOP####

# PENDING YET TO IMPLEMENT
#####################
