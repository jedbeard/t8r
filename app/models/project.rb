class Project < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :translations, :dependent => :destroy
end