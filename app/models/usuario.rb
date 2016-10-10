# == Schema Information
#
# Table name: usuarios
#
#  id              :integer          not null, primary key
#  name            :string
#  last_name       :string
#  tipo_usuario_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Usuario < ActiveRecord::Base
  
  belongs_to :tipo_usuario
  
  def tipo_name    
     self.tipo_usuario.name  
  end
  
  validates :name, :last_name, presence: true, 
                   uniqueness: {case_sensitive: false} 
  validates :tipo_usuario, presence: { message: "Es necesario definir un tipo de usuario" }

end
