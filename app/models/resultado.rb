class Resultado < ActiveRecord::Base
  belongs_to :mesa
  belongs_to :candidato
end
