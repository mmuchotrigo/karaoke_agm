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

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
