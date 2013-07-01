require 'spec_helper'

describe Survey do
  let(:survey) {Survey.new(name: 'tree census', year: '2013', stype: 'population', location: 'pune')} 
  let(:survey_name_short) {Survey.new(name: 'tree', year: '2013', stype: 'population', location: 'pune')} 
  
  it "must have a name" do
    survey.save
    survey.should be_valid
  end

  it "must not be without a name" do
    survey.name= nil
    survey.save
    survey.should_not be_valid
  end
   
  it "must have a year" do
     survey.save
     survey.should be_valid
   end
     
  it "must not be without a type" do
      survey.stype= nil
      survey.save
      survey.should_not be_valid
   end

  it "must not be without a location" do
    survey.location= nil
    survey.save
    survey.should_not be_valid
  end
  
  it "must not have length less than 5" do
     survey_name_short.should have(1).errors_on(:name)
  end
end
