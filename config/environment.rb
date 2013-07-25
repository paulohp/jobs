# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Startupjobsbrasil::Application.initialize!
Time::DATE_FORMATS[:post] = "posted on %b, %m %Y - %I:%M%p"