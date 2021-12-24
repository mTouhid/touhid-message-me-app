require 'rails_helper'

RSpec.describe User, type: :model do
  it "doest not create a user, when provided empty strings" do
    user = User.new(username: "", password: "")

    expect(user).not_to be_valid  
  end

  it "creates a user, when provided strings" do
    user = User.new(username: "Test User", password: "password")

    expect(user).to be_valid  
  end
end
