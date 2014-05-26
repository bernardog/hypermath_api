class OperationsController < ApplicationController

  def add
    @operation = Operation.new(operation_params)
    @operation.addition!
    @operation.operate!
    @operation.save
    render nothing: true
  end

  def subtract
    @operation = Operation.new(operation_params)
    @operation.subtraction!
    @operation.operate!
    @operation.save
    render nothing: true
  end

  private

  def operation_params
    params.require(:operation).permit!
  end

end
