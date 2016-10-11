# == Schema Information
#
# Table name: profiles
#
#  id               :integer          not null, primary key
#  name             :string
#  apellido_paterno :string
#  apellido_materno :string
#  dni              :string
#  telefono         :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Profile < ActiveRecord::Base
  belongs_to :user  
  def full_name
      self.name + " " + self.apellido_paterno
  end
end
