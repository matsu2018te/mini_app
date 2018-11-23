class MessagesController < ApplicationController
  before_action :index, except: :index

  def index
    @messages = Message.all
  end

  def new
    @messages = Message.new
  end

  def create
    Message.create(name: params[:message][:name], text: params[:message][:text])
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(text: params[:message][:text])
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

