require_relative 'min_max_stack'

class MinMaxStackQueue

  def initialize
    @in_stack = MinMaxStack.new
    @out_stack = MinMaxStack.new
  end
end
