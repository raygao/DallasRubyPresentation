# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DallasRbDemo::Application.initialize!


ENV['SSL_CERT_FILE'] = "/opt/local/share/curl/curl-ca-bundle.crt"