require 'clipboard'
require './lib/robot_walks'

describe RobotWalks do
  let(:dummy_class){(Class.new{include RobotWalks}).new}

  describe '#somemethod' do
    it 'check settings' do
      # puts dummy_class.draw_polar(5,144)
      # puts dummy_class.draw_left_arc_center(5,144)
      # puts dummy_class.draw_left_arc(5,144)
      # res = "\\begin{tikzpicture}\n" + dummy_class.draw_left(5,72) + "\\end{tikzpicture}\n"
      # res += "\\begin{tikzpicture}\n" + dummy_class.draw_left(5,144) + "\\end{tikzpicture}\n"
      # Clipboard.copy res

      res = "\\begin{tikzpicture}\n" + dummy_class.draw_left(5,72)
      res += dummy_class.draw_left(5,144)
      res += dummy_class.draw_left(5,216)
      res += dummy_class.draw_left(5,288)
      res += dummy_class.draw_left(5,0)  + "\\end{tikzpicture}\n"
      # res += dummy_class.draw_left(5,144) + "\\end{tikzpicture}\n"
      Clipboard.copy res
    end
  end
end
