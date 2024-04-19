class RandomController < ApplicationController
  def random
    render(:template => 'templates/random')
  end
  def randomize
    @min = params.fetch("user_min").to_f 
    @max = params.fetch("user_max").to_f 
    @number = rand(@min..@max).to_f
    render(:template => 'templates/random_results')
  end
end
