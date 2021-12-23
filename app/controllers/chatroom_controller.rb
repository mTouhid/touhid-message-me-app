class ChatroomController < ApplicationController

  before_action :require_logged_in

  def index
    @users = User.all
    @messages = Message.last_20
    @message = Message.new
  end
end