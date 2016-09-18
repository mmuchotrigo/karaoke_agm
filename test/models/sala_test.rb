# == Schema Information
#
# Table name: salas
#
#  id         :integer          not null, primary key
#  name       :string
#  capacity   :integer
#  about      :string
#  local_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SalaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
