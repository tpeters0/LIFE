class WelcomeController < ApplicationController
  def index
    render 'welcome.html.erb', layout: false
  end

end
