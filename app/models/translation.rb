class Translation < ActiveRecord::Base
  attr_accessible :language, :key, :translation
  belongs_to :project
end
