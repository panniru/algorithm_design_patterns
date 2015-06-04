class MyArray

  def initialize
    @array = []
    @pointer = []
    @source = []
    @t = 0
  end

  def read(index)
    if valid? index
      return @array[index]
    end
    false
  end

  def write(index, value)
    unless(valid?index)
      @source[t] = index
      @pointer[index] = t
      @t += 1
    end
    @array[index] = value
  end
  
  def valid?(index)
    (0 <= @pointer[index].to_i && @pointer[index].to_i < t && @source[@pointer[index].to_i].to_i == index)
  end
  
end
