class LoginController < ApplicationController
  # skip CSRF protection and set session to null
  # protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  # this is just for demo & talking about how the functionality
  # can be achieved. in production, don't blindly redirect to the
  # callback, make sure you've implemented a whitelist & have
  # people register the callback to avoid redirect attacks

  def index
    @callback = session[:callback]
    @payload = session[:payload]
  end

  def data
    @payload = params[:payload]
    @callback = params[:callback]

    session[:payload] = @payload
    session[:callback] = @callback
    redirect_to action: :index
  end
end
