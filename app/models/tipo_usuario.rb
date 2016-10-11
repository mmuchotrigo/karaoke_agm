# == Schema Information
#
# Table name: tipo_usuarios
#
#  id          :integer          not null, primary key
#  name        :string
#  descripcion :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TipoUsuario < ActiveRecord::Base
     
     has_many :usuarios
    
     validates :name, presence: true, 
                    uniqueness: {case_sensitive: false}
end
