# Load the Rails application.
require_relative 'application'

# Make sure you are loading CarrierWave after loading your ORM
require 'carrierwave/orm/activerecord'

# Initialize the Rails application.
Rails.application.initialize!


