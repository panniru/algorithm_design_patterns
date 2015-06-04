class Rectangle
  attr_accessor :x, :y, :width, :height
  def initialize(x, y , width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
  end
end


def intersect?(r, s)
  (r.x <= s.x+s.width) && (r.x+ r.width >= s.x) && (r.y <= s.y + s.height) && (r.y+r.height >= s.y) 
end

def intersect_rectangle(r, s)
  if(intersect?(r, s))
    [([r.x, s.x].max) , ([r.y, s.y].max), (([(r.x+r.width), (s.x+s.width)].min) - ([r.x, s.x].max)) , (([(r.y+r.height), (s.y+s.height)].min) - ([r.y, s.y].max))]
  else
    [0, 0, -1, -1]
  end
end





