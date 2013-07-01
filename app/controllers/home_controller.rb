class HomeController < ApplicationController
  def show
    p params
    @survey= Survey.find(params[:id])
  end
end
