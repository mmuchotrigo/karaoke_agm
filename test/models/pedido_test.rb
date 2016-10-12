# == Schema Information
#
# Table name: pedidos
#
#  id          :integer          not null, primary key
#  producto_id :integer
#  cantidad    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
