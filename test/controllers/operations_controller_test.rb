require 'test_helper'

class OperationsControllerTest < ActionController::TestCase

  test "should post a new addition operation" do
    post :add, operation: { x: '6', y: '2' }
    assert_equal 8, Operation.last.result
  end

  test "should post a new subtract operation" do
    post :subtract, operation: { x: '6', y: '2' }
    assert_equal 4, Operation.last.result
  end

  test "should post a new division operation" do
    post :divide, operation: { x: '6', y: '2' }
    assert_equal 3, Operation.last.result
  end

end
