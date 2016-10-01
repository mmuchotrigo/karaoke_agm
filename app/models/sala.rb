# == Schema Information
#
# Table name: salas
#
#  id         :integer          not null, primary key
#  name       :string
#  capacity   :integer
#  about      :string
#  local_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sala < ActiveRecord::Base
  belongs_to :local
  
  #has_many :events, dependent: :destroy

    validates :name, presence: { message: "Campo obligatorio" }
    validates :capacity, :numericality => {:only_integer => true, :message => "Este campo debe ser numérico"}
end
