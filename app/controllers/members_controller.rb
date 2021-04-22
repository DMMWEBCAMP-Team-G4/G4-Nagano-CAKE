class MembersController < ApplicationController
    
  def show
    @member = Member.find(params[:id])
    # @fullname = @member.last_name+@member.first_name
    # @fullname_kana = @member.last_name_kana+@member.first_name_kana
  end
  
  def edit
  end
  
  def update
  end
  
  def quit
  end
  
  def withdraw
  end
  
end