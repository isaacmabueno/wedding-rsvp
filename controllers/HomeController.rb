class HomeController < ApplicationController
  get '/' do
    erb :index
  end

  post '/respond' do

    puts params

    @rsvp = ResponsesModel.new

    @rsvp.name = params[:name]
    @rsvp.isattending = params.has_key?('isattending')
    @rsvp.hasplusone = params.has_key?('hasplusone')
    @rsvp.save

    @confirmation_message = 'Thanks!'
    if @rsvp.isattending == true
      @confirmation_message = @confirmation_message + 'We look forward to seeing you!'
    else
      @confirmation_message = @confirmation_message + 'We are sorry we will not see you. Thank you for responding and dont forget to get us a gift!'
    end

    erb :rsvp_confirmation
  end

end
