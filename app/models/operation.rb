class Operation < ActiveRecord::Base
  enum which: [:addition, :subtraction, :multiplication, :division]

  def operate!
    self.result =
    case which
    when "addition"
      x + y
    when "subtraction"
      x - y
    when "multiplication"
      x * y
    when "division"
      x / y
    end
    self.save
    result
  end

end
