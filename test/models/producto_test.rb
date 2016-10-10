# == Schema Information
#
# Table name: productos
#
#  id          :integer          not null, primary key
#  type        :string
#  name        :string
#  price       :decimal(, )
#  available   :boolean
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
