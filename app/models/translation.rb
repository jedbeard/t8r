class Translation < ActiveRecord::Base
  attr_accessible :language, :key, :to_translate, :translation
  belongs_to :project
end
