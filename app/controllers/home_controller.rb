class HomeController < ApplicationController
  def show
    @survey= Survey.find(params[:id]) 
  end
end
