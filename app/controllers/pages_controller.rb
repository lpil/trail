# typed: true
class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    render :home, locals: {}
  end
end
