# == Schema Information
#
# Table name: salas
#
#  id          :integer          not null, primary key
#  name        :string
#  capacity    :string
#  description :string
#  local_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sala < ActiveRecord::Base
  belongs_to :local
  
    def local_name
    self.local.name
    end
    
    validates :name, :description, presence: { message: "Campo obligatorio" }
    validates :capacity, :numericality => {greater_than_or_equal_to: 0, lower_than_or_equal_to: 100, :message => "Este campo debe ser numérico"}
    validates :local, presence: true
end
