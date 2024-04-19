class SquareRootController < ApplicationController
  def square_root
    render(:template => 'templates/square_root')
  end
  def square_root_it
    @number = params.fetch("user_number").to_f
    @sqr_root = @number ** 0.5
    render(:template => 'templates/square_root_results')
  end
end
