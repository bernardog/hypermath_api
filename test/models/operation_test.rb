require 'test_helper'

class OperationTest < ActiveSupport::TestCase

  def setup
    @op = operations(:one)
  end

  def teardown
    @op = nil
  end

  test "six plus two should be eight" do
    @op.addition!
    assert_equal 8, @op.operate!
  end

  test "six minus two should be minus four" do
    @op.subtraction!
    assert_equal 4, @op.operate!
  end

  test "six times two should be twelve" do
    @op.multiplication!
    assert_equal 12, @op.operate!
  end

  test "six divide by two should be three" do
    @op.division!
    assert_equal 3, @op.operate!
  end

end
