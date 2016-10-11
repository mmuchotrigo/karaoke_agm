# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  salas_id   :integer
#  clients_id :integer
#  date_time  :datetime
#  about      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :salas
  belongs_to :clients
end
