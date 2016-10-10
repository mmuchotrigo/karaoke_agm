# == Schema Information
#
# Table name: locals
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  phone       :string
#  email       :string
#  description :string
#  manager_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LocalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
