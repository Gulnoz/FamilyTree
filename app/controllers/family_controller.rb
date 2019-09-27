class FamilyController < ApplicationController
   before_action :find_family, only: [:show]
    
def index
    @families=Family.all
    render json: @families
end

def show
    render json: @family.as_json(include: :members)
end

def create
      @family=Family.create!(family_params)
    render json:(@family)
end

def update
      @family=Family.create!(family_params)
   render json:(@family)
end

#   render json: @user.as_json(include: :posts), status: 200

private

def family_params
    # whitelist params
    params.permit(:name, :picture)
  end

  def find_family
    @family = Family.find(params[:id])
  end
end

