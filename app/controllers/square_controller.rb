class SquareController < ApplicationController
  def square
    render(:template => 'templates/homepage')
  end
  def square_it
    @number = params.fetch("number").to_f
    @squared_num = @number ** 2
    render(:template => 'templates/square_results')
  end
end
