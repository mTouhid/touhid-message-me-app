require 'rails_helper'

RSpec.describe Message, type: :model do
  it "does not create a message when provided empty string" do
    message = Message.new(body: "")

    expect(message).not_to be_valid  
  end

  it "creates a message when provided a string" do
    user = User.create(username: "Test User", password: "password")
    message = Message.new(body: "Hi, this is a test message", user: user)

    expect(message).to be_valid  
  end
end
