class MemberController < ApplicationController
   before_action :find_member, only: [:show]

def index
@members=Member.all
 render json: (@members)
end

   def show
 
  render json: (@member)

end

def create
     @member = Member.create!(member_params)
    render json: (@member)
end

def update
     @member = Member.update(member_params)
    render json: (@member)
end


private

def member_params
    # whitelist params
    params.permit(:name, :age, :picture)
  end

  def find_member
    
    @member = Member.find(params[:id])
  
  end
end


