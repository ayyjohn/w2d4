require_relative 'my_stack'

class MinMaxStack

  # since @store will be an array of hashes, each with a :min, :max
  # and :value, and each of these will store the current min/max
  # we can peek at the last element of store and access the current
  # min or max. new_max(val) private method ensures that the last
  # element of the @store array of hashes will always know what the max
  # is, and popping removes that hash. since it is convention, we can
  # return the :value of the hash popped to simulate the trivial
  # implementation of an array as a stack.

  attr_reader :store

  def initialize
    @store = MyStack.new
  end

  def empty?
    @store.empty?
  end

  def min
    @store.peek[:min] unless empty?
  end

  def max
    @store.peek[:max] unless empty?
  end

  def pop
    @store.pop[:value] unless empty?
  end

  def size
    @store.size
  end

  def push(val)
    @store.push({
      max: new_max(val),
      min: new_min(val),
      value: val
    })
  end

  private

  def new_max(val)
    # if store is empty, return the value
    # otherwise return the max of val and the old max
    empty? ? val : [max, val].max
  end

  def new_min(val)
    empty? ? val : [min, val].min
  end

end
