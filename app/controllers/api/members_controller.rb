class Api::MembersController < ApplicationController
  def index
    @members = Member.all
  end
end
