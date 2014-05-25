require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  
  test "two plus three should be five" do
    operations(:addition).operate!
    assert_equal 5, operations(:addition).result
  end

  test "two minus three should be minus one" do
    operations(:substraction).operate!
    assert_equal -1, operations(:substraction).result
  end

  test "two times three should be six" do
    operations(:multiplication).operate!
    assert_equal 6, operations(:multiplication).result
  end

  test "six divide by two should be three" do
    operations(:division).operate!
    assert_equal 3, operations(:division).result
  end

end
