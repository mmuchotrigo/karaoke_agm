# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  reserved_at :datetime
#  description :string
#  sala_id     :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :sala
  belongs_to :user
  
  def sala_name    
    self.sala.name
  end
  
  def user_name    
    self.user.name + " " + self.user.ap_paterno
  end
  
  validates :sala, presence: true
  validates :user, presence: true
end
