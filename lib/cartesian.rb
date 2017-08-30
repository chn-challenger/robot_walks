class CartesianCoordinate
  attr_accessor :x_coord, :y_coord

  def initialize(x_coord,y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def to_polar
    r = length
    a = ((Math::atan(y_coord/x_coord.to_f)) / Math::PI * 180)

    a += 180 if x_coord < 0 && y_coord > 0
    a += 180 if x_coord < 0 && y_coord < 0
    a += 360 if x_coord > 0 && y_coord < 0

    PolarCoordinate.new(r,a)
  end


  def length
    Math::sqrt(x_coord**2 + y_coord**2)
  end

end
