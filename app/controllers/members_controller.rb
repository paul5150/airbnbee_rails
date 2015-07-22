class MembersControllers < ApplicationController

  def new
  end
  def index
    @members = Member.all
  end
