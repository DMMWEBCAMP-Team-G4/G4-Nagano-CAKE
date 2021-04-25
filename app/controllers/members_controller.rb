class MembersController < ApplicationController

  def show
    @member = current_member
    @full_name = self.last_name+self.first_name
    @full_name_kana = self.last_name_kana+self.first_name_kana
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