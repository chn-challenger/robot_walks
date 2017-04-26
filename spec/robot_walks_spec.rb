require 'clipboard'
require './lib/robot_walks'

describe RobotWalks do
  let(:dummy_class){(Class.new{include RobotWalks}).new}



  describe '#somemethod' do
    it 'to_polar eg 1' do
      expect(dummy_class.to_polar([1.41421,1.41421])).to eq [1.9999949620436548, 45.0]
    end

    it 'to_polar eg 2' do
      expect(dummy_class.to_polar([4,5])).to eq [6.4031242374328485, 51.340191745909905]
    end

    it 'to_polar eg 3' do
      expect(dummy_class.to_polar([-4,5])).to eq [6.4031242374328485, 128.65980825409008]
    end

    it 'to_polar eg 4' do
      expect(dummy_class.to_polar([-4,-5])).to eq [6.4031242374328485, 231.34019174590992]
    end

    it 'to_polar eg 5' do
      expect(dummy_class.to_polar([4,-5])).to eq [6.4031242374328485, 308.6598082540901]
    end

    it 'check settings' do
      res = "\\begin{tikzpicture}[shorten >=-3pt,shorten <=-3pt]\n" +
        # dummy_class.robot_walks +
        dummy_class.robot_walks([[:a,:r],[:a,:l],[:b,:l],[:b,:r],[:b,:l]]) +
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
