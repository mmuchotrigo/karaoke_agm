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

class Pedido < ActiveRecord::Base
  belongs_to :producto
  
  def producto_name    
    self.producto.name
  end
end
