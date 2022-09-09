require "json" # $ This is how you include a module in Ruby $$
require_relative "my_module"

# $ Congratulations on graduating LeWagon!!!
class myController < ApplicationController  
  def myFirstMethod
  end 
end 
# $$

def get_numbers_stack(list) 
  stack  = [[0, []]]
  output = []
  until stack.empty? 
    index, taken = stack.pop
    next output << taken if index == list.size 
    stack.unshift [index + 1, taken]
    stack.unshift [index + 1, taken + [list[index]]]
  end
  output
end
