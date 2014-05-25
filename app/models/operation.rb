class Operation < ActiveRecord::Base
  enum type: [:addition, :subtraction, :multiplication, :division]
end
