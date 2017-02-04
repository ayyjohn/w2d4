require_relative 'my_stack'

class StackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end
end
