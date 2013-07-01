require 'spec_helper'

describe Question do

  let(:question) {Question.new(desc: 'what is your name')}
  let(:question1) {Question.new(desc: 'what')}
  let(:quest1) {Question.new(desc: 'what is your name')}
  let(:quest2) {Question.new(desc: 'what is your name')}
  let(:quest3) {Question.new(desc: 'which city are you from')}
  let(:survey) {Survey.new(name: 'tree census', year: '2013', stype: 'population', location: 'pune')}
  
  it "must have a desc" do
      question.save
      question.should be_valid
    end

  it "must not be without a desc" do
    question.desc= nil
    question.save
    question.should_not be_valid
  end
   
  it "must not have length less than 5" do
     question1.should have(1).errors_on(:desc)
  end  
 
  it "must be unique for every survey" do   
    survey.questions << quest1 
    quest1.save
    quest2.should have(1).errors_on(:desc)
  end

end
