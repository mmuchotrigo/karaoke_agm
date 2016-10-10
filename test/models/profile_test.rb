# == Schema Information
#
# Table name: profiles
#
#  id               :integer          not null, primary key
#  name             :string
#  apellido_paterno :string
#  apellido_materno :string
#  dni              :string
#  telefono         :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
