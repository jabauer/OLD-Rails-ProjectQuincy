class Enclosure < ActiveRecord::Base
  has_many :validations, :as => :validatable
end
