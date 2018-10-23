class WelcomeController < ApplicationController
  def index
    @login_server = 'http://localhost:3001'
    @local_port = Rails::Server.new.options[:Port]
    @login_uri = "#{@login_server}?callback=#{request.url}"
  end
end
