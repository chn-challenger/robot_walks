require 'clipboard'
require './lib/robot_walks'

describe RobotWalks do
  let(:dummy_class){(Class.new{include RobotWalks}).new}

  describe '#somemethod' do
    it 'check settings' do
      res = "\\begin{tikzpicture}\n" +
        dummy_class.robot_walks + 
        # dummy_class.draw_left(5,72,5,72) +
        # dummy_class.draw_left(5,72,5,144) +
        # dummy_class.draw_left(0,0,5,72) +
        # dummy_class.draw_polar_a_b(5,72,5,72) +
        # dummy_class.draw_left_arc_center(5,72,5,72) +
        # dummy_class.draw_left_arc(5,72,5,72) +
        "\\end{tikzpicture}\n"

      Clipboard.copy res
    end
  end
end
