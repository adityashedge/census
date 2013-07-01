require 'spec_helper'

describe SurveysController do

  let(:survey) {Survey.new(name: "binary tree", stype: "population", year: "2013", location: "pune",
             questions_attributes: {"0"=> {desc: "Question1", options_attributes: {"0"=> {desc: "Option1"},
                                                                                   "1"=> {desc: "Option2"},
                                                                                   "2"=> {desc: "Option3"}}},
                                    "1"=> {desc: "Question2", options_attributes: {"0"=> {desc: "Option1"},
                                                                                   "1"=> {desc: "Option2"},
                                                                                   "2"=> {desc: "Option3"}}},
                                    "2"=> {desc: "Question3", options_attributes: {"0"=> {desc: "Option1"},
                                                                                   "1"=> {desc: "Option2"},
                                                                                   "2"=> {desc: "Option3"}}}
                                })}

  describe "GET new" do
    
    it "must get new survey with a valid index" do
      survey = Survey.create(name: "binary tree", stype: "population", year: "2013", location: "pune")
      get :index
      expect(assigns(:surveys).count).to eq(1)
      expect(assigns(:surveys)).to eq([survey])
      expect(response.status).to eq(200)
    end

    it "must render new page after create" do
      get :new
      expect(assigns(:survey).new_record?).to eq(true)
      expect(response).to render_template :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST new" do
    

    it "must create survey with a valid attributes only and redirect to index" do
      #expect(assigns(:survey)).to render_template :index 
      post :create, survey: {name: "binary tree", stype: "population", year: "2013", location: "pune",
                      questions_attributes: {"0"=> {desc: "Question1", options_attributes: {"0"=> {desc: "Option1"},
                                                                                            "1"=> {desc: "Option2"},
                                                                                            "2"=> {desc: "Option3"}}},
                                             "1"=> {desc: "Question2", options_attributes: {"0"=> {desc: "Option1"},
                                                                                            "1"=> {desc: "Option2"},
                                                                                            "2"=> {desc: "Option3"}}},
                                             "2"=> {desc: "Question3", options_attributes: {"0"=> {desc: "Option1"},
                                                                                            "1"=> {desc: "Option2"},
                                                                                            "2"=> {desc: "Option3"}}}
                                        }}
      survey = Survey.last
      expect(assigns(:survey).name).to eq("binary tree")
    end
  end

  describe "GET edit" do
    it "must get the correct survey" do
      survey = Survey.create(name: "binary tree", stype: "population", year: "2013", location: "pune")
      get :edit, id: survey.id
      expect(response).to render_template :edit
    end
  end

  describe 'DELETE destroy' do
    it "deletes the message from the database" do
      survey.save
      delete :destroy, id: survey.id
      expect(response).to redirect_to surveys_path
    end
  describe 'GET show' do
    it "must show details of survey" do
      expect(assigns(:survey)).to redirect_to :show

    end
  end
end
