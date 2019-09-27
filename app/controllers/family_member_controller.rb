class FamilyMemberController < ApplicationController
         

def create
    @familyMember=FamilyMember.create!(family_member_params)
    render json:(@familyMember)
end

def update
      @familyMember=FamilyMember.update(family_member_params)
    render json:(@familyMember)
end



private

  def family_member_params
    params.permit(:status, :family_id, :member_id)
  end

  def find_family
    @familyMember = FamilyMember.find(params[:id])
  end
end

