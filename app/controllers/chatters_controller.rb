class ChattersController < ApplicationController
  include Databasedotcom::Rails::Controller
  before_filter :verify_configuration

  def index

    #OID or just 'me'
    @feed_items = Databasedotcom::Chatter::UserProfileFeed.find(dbdc_client, 'SObject_ID')

  end
  
  private

  def verify_configuration
    redirect_to "/slides" unless File.exist?(File.join(Rails.root, 'config', 'databasedotcom.yml'))
  end

end
