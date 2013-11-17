class Mesa < ActiveRecord::Base
  belongs_to :circunscripcion
  belongs_to :local
  
  def self.search(search)
    if search
      where('nombre LIKE ?', "%#{search}%")
    else
      Mesa.all
    end
  end
end
