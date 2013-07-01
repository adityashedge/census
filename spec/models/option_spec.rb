require 'spec_helper'

describe Option do
=begin
  it "must have a desc" do
      option.save
      option.should be_valid

    end

  it "must not be without a desc" do
    option.desc= nil
    option.save
    option.should_not be_valid
  end

  it "must not have length less than 5" do
     question1.should have(1).errors_on(:desc)
  end

  it "must be unique for every survey" do
     survey.questions << quest1
     survey.save
     quest2.should have(1).errors_on(:desc)
  end
=end
end
