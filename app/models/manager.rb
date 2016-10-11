# == Schema Information
#
# Table name: managers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Manager < ActiveRecord::Base
    has_many :locals
    has_many :salas, through: :locals
    
    validates :name, :description, presence: { message: "Campo obligatorio" }
end
