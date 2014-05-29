class OperationsController < ApplicationController

  def add
    @operation = Operation.new(operation_params)
    @operation.addition!
    @operation.operate!
    render json: @operation
  end

  def subtract
    @operation = Operation.new(operation_params)
    @operation.subtraction!
    @operation.operate!
    render json: @operation
  end

  def multiply
    @operation = Operation.new(operation_params)
    @operation.multiplication!
    @operation.operate!
    render json: @operation
  end

  def divide
    @operation = Operation.new(operation_params)
    @operation.division!
    @operation.operate!
    render json: @operation
  end

  private

  def operation_params
    params.require(:operation).permit(:x, :y)
  end

end
