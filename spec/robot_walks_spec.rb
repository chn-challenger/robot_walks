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
      walk_1 = [
        [0,:r],[0,:l],[0,:r],[4,:r],[4,:l],[0,:l],[1,:l],[1,:r],[1,:l],[2,:l],
        [2,:r],[2,:l],[3,:l],[4,:l],[4,:r],[3,:r],[3,:l],[3,:r],[2,:r],[1,:r]
        ]
      walk_2 = [
        [0,:r],[4,:r],[3,:r],[2,:r],[2,:l],[3,:l],[4,:l],[4,:r],[4,:l],[0,:l],
        [1,:l],[2,:l],[3,:l],[3,:r],[2,:r],[1,:r],[1,:l],[1,:r],[0,:r],[0,:l]
        ]
      res = "\\begin{tikzpicture}[shorten >=-3pt,shorten <=-3pt]\n" +
        # dummy_class.robot_walks +
        # dummy_class.robot_walks([[0,:r],[0,:l],[1,:l],[1,:r],[1,:l]]) +
        # dummy_class.robot_walks([[0,:r],[4,:r],[4,:l],[0,:l],[1,:l],[2,:l],[3,:l],[3,:r],[2,:r],[1,:r]]) +
        dummy_class.robot_walks(walk_2) +
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
