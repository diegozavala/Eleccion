class Local < ActiveRecord::Base
  belongs_to :circunscripcion
  has_many :mesa
end
