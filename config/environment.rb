# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Startupjobsbrasil::Application.initialize!
Time::DATE_FORMATS[:post] = "postado em %d de %B de %Y"
