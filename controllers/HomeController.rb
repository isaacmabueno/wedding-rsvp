class HomeController < ApplicationController
  get '/' do
    erb :index
  end

  post '/respond' do
    erb :rsvp_confirmation
  end

end
