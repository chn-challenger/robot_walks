require 'clipboard'
require './lib/robot_walks'

describe RobotWalks do
  let(:dummy_class){(Class.new{include RobotWalks}).new}

  describe '#somemethod' do
    it 'check settings' do
      res = dummy_class.test_method
      Clipboard.copy res
    end
  end
end
