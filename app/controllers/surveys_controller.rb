class SurveysController < ApplicationController
  def index
    @surveys= Survey.all
  end

  def new
    @survey= Survey.new
    #3.times {@survey.questions.build}
    3.times do 
       @survey.questions.build
       3.times do 
         @survey.questions.last.options.build
      end
    end  
  end
  
  def create
    p params
    @survey= Survey.new(params[:survey])
    if @survey.save
      p "creation successful"
      redirect_to surveys_path
    else
      p "creation failed"
      render action: :new
    end
  end


  def edit
    @survey= Survey.find(params[:id])
  end

  def show
    @survey= Survey.find(params[:id])
      p "Survey exists"
  end

  def update
    @survey= Survey.find(params[:id])
    if @survey.update_attributes(params[:survey])
      redirect_to surveys_path
    else
      render action: :new
    end
  end

  def destroy
    @survey= Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path 
  end

end
