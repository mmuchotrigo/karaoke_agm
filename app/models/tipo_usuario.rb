class TipoUsuario < ActiveRecord::Base
     
     has_many :usuarios
    
     validates :name, presence: true, 
                    uniqueness: {case_sensitive: false}
end
