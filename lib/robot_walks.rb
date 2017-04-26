module RobotWalks
  def to_xy(r,a)
    a = a.to_f / 180 * Math::PI
    x_coord = r*Math::cos(a)
    y_coord = r*Math::sin(a)
    [x_coord,y_coord]
  end

  def draw_polar(r,a)
    coords = to_xy(r,a)
    "\\draw[->,black,line width=2pt,smooth](0,0)--(#{coords[0]},#{coords[1]}){};\n"
  end

  def arc_radius(r,a)
    (Math::sin(54.to_f / 180 * Math::PI)) / (Math::sin(72.to_f / 180 * Math::PI)) * r
  end

  def left_arc_center(r,a)
    result_r = (Math::sin(54.to_f / 180 * Math::PI)) / (Math::sin(72.to_f / 180 * Math::PI)) * r
    result_a = (a-54)%360
    result_a = result_a.to_f / 180 * Math::PI
    x_coord = result_r*Math::cos(result_a)
    y_coord = result_r*Math::sin(result_a)
    [x_coord,y_coord]
  end

  def draw_left_arc_center(r,a)
    coords = left_arc_center(r,a)
    "\\node[circle,draw=black, fill=black,inner sep=0pt, minimum size=3pt] at (#{coords[0]},#{coords[1]}) {};\n"
  end

  def draw_arc(starting_a,ending_a,radius,center)
    "\\draw [*-*,red,thick,smooth,domain=#{starting_a}:#{ending_a}] plot ({#{radius}*cos(\\x)+#{center[0]}}, {#{radius}*sin(\\x)+#{center[1]}});\n"
  end

  def draw_left_arc(r,a)
    starting_a = 180 + (a - 54) - 72
    ending_a = starting_a + 72
    radius = arc_radius(r,a)
    center = left_arc_center(r,a)
    draw_arc(starting_a,ending_a,radius,center)
  end

  def draw_left(r,a)
    draw_polar(r,a) + draw_left_arc_center(r,a) + draw_left_arc(r,a)
  end

  def polar_to_xy(r,a)
    a = a.to_f / 180 * Math::PI
    x_coord = r*Math::cos(a)
    y_coord = r*Math::sin(a)
  end


end
