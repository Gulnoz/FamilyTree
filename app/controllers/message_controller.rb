class MessageController < ApplicationController
       before_action :find_message, only: [:destroy]

def index
 @messages=Message.all
render json:  @messages
end


def create
       @message=Message.create!(message_params)
   render json: (@message)
end

def update
      @message=Message.update(message_params)
   render json: (@message)
end

def destroy
Message.destroy(@message)
end

#   render json: @user.as_json(include: :posts), status: 200

private

def message_params
    # whitelist params
    params.permit(:content, :picture, :member_id, :family_id)
  end

  def find_message
    @message = Message.find(params[:id])
  end
end

