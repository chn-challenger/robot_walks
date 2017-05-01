class PolarCoordinate
  attr_accessor :radius, :angle

  def initialize(radius,angle)
    @radius = radius
    @angle = angle
  end

  def plus(vector_b)

  end

  def to_cartesian
    real_a = angle.to_f / 180 * Math::PI
    x_coord = r*Math::cos(real_a)
    y_coord = r*Math::sin(real_a)
    CartesianCoordinate.new(x_coord,y_coord)
  end

end
