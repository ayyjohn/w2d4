require_relative "min_max_stack_queue"

def max_windowed_range(array, window_size)

  num_windows = array.length - window_size + 1
  best_range = nil

  num_windows.times do |i|
    window = array.slice(i, window_size)
    current_best_range = window.max - window.min

    best_range = current_range if !beset_range || current_range > best_range
  end

  best_range
end

def max_windowed_range(array, window_size)

  queue = MinMaxStackQueue.new
  best_range = nil

  array.each_with_index do |el, i|
    queue.enqueue(el)
    queue.dequeue if queue.size > window_size

    if queue.size == window_size
      current_range = queue.max - queue.min
      best_range = current_range if !best_range || current_range > best_range
    end

  end

  best_range
end
