class Reserva < ActiveRecord::Base
  belongs_to :local
  belongs_to :sala
  
  def local_name    
    self.local.name  
  end
  
  def sala_name    
    self.sala.name  
  end
    
    validates :sala, presence: true
    validates :local, presence: true
end
