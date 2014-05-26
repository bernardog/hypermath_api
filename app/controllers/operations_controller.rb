class OperationsController < ApplicationController

  def add
    @operation = Operation.new(operation_params)
    @operation.operate!
    @operation.save
    render nothing: true
  end

  private

  def operation_params
    params.require(:operation).permit!
  end

end
