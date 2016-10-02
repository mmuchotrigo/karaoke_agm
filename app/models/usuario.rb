class Usuario < ActiveRecord::Base
  
  belongs_to :tipo_usuario
  
  def tipo_name    
     self.tipo_usuario.name  
  end
  
  validates :name, :last_name, presence: true, 
                   uniqueness: {case_sensitive: false} 
  validates :tipo_usuario, presence: true

end
