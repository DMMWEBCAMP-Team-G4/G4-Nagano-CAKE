class Admin::MembersController < ApplicationController
  
  def index
  end
  
  def show
    @member = Member.find(params[:id])
    @fullname = @member.last_name+@member.first_name
    @fullname_kana = @member.last_name_kana+@member.first_name_kana
  end
  
  def edit
     @member = Member.find(params[:id])
     @fullname = @member.last_name+@member.first_name
  end
  
  def update
     @member = Member.find(params[:id])
     if @member.update(member_params)
      redirect_to admin_member_path(@member)
     else
      render :edit and return
     end
  end
  
  private
	def member_params
	  params.require(:member).permit(:email,:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:member_status)
	end
  
end
