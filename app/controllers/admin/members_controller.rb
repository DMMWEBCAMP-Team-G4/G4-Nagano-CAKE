class Admin::MembersController < ApplicationController
  
  def index
  end
  
  def show
    @member = Member.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
end
