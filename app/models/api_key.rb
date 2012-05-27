class ApiKey < ActiveRecord::Base
  validates_presence_of :site_name
  validates_presence_of :api_key
  attr_accessible :site_name,:api_key
end
