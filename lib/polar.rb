class PolarCoordinate
  attr_accessor :radius, :angle

  def initialize(radius,angle)
    @radius = radius
    @angle = angle
  end

  def plus(vector_b)
    #adding two together
  end

  def to_cartesian
    real_a = angle.to_f / 180 * Math::PI
    x_coord = r*Math::cos(real_a)
    y_coord = r*Math::sin(real_a)
    CartesianCoordinate.new(x_coord,y_coord)
  end

  def arc_center(r,a)
    result_r = (Math::sin(54.to_f / 180 * Math::PI)) / (Math::sin(72.to_f / 180 * Math::PI)) * r
    result_a = (a-54)%360
    result_a = result_a.to_f / 180 * Math::PI
    x_coord = result_r*Math::cos(result_a)
    y_coord = result_r*Math::sin(result_a)
    [x_coord,y_coord]
  end

end
