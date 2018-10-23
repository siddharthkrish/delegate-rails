class LoginController < ApplicationController
  def index
    @callback = params[:callback]
  end
end
