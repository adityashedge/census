class HomeController < ApplicationController
  def show
    p "===================="
    p params
    @survey= Survey.find(params[:id])
  end

  def create
    parameter = params[:desc]
    parameter.each do |key, value|
      p key
      p value
      #@ans = Answer.new
      @ans = Answer.create!(option: Option.find(value).desc, user_id: current_user.id, question_id: key, option_id: value) 
=begin      p @ans.question_id = key 
      p @ans.option_id = value 
      p @ans.option= Option.find(value).desc
      p @ans.user_id = current_user.id
      @ans.save!
=end      
    end
    redirect_to "home#display"    
  end

end
