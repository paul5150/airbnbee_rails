class MembersController < ApplicationController


  def index
    @members = Member.all
    @locations = Location.all
  end
end
