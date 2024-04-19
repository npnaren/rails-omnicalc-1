class HomepageController < ApplicationController
  def homepage
    render(:template => 'templates/homepage')
  end
end
