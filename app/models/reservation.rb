class Reservation < ActiveRecord::Base
  belongs_to :salas
  belongs_to :clients
end
