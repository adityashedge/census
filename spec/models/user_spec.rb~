require 'spec_helper'

describe User do
  let(:user) {User.new(name: "aditya", email: "adcb@xyz.com", password: "qwerty")}
  let(:user1) {User.new(name: "aditya", email: "adcb@xyz.com", password: "qwerty")}
  
  it "username must be present" do
    user.save
    user.should be_valid
  end

  it "username must not be blank" do
    user.name = nil
    user.save
    user.should_not be_valid
  end

  it "must have a unique email address" do
    user.save
    user1.should have(1).errors_on (:email)

  end

  it "must have a valid email address" do
    user.email= "adb@.com"
    user.save
    user.should_not be_valid
  end

  it "must have a valid password" do
    user.password= "adc"
    user.password_confirmation = "adc"
    user.save
    user.should_not be_valid
  end

  it "must have a valid confirmation password" do
    user.password_confirmation= "assasa" 
    user.should have(1).error_on(:password)
  end

end
