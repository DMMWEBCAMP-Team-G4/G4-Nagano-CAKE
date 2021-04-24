class MembersController < ApplicationController
    
  def show
    @member = current_member
    @fullname = @member.last_name+@member.first_name
    @fullname_kana = @member.last_name_kana+@member.first_name_kana
  end
  
  def edit
    @member = current_member
  end
  
  def update
    @member = current_member
    if @member.update(member_params)
    redirect_to members_path
    else
    render :edit and return
    end
  end
  
  def quit
    @member = current_member
  end
  
  def withdraw
    @member = current_member
    @member.update(member_status: true)
    reset_session
    redirect_to root_path
  end
  
  private
  
	def member_params
	  params.require(:member).permit(:email,:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:member_status)
	end
	
end