# == Schema Information
#
# Table name: locals
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  phone      :integer
#  email      :string
#  about      :string
#  manager    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Local < ActiveRecord::Base
    has_many :salas, dependent: :destroy
    
    validates :name, :address, :email, :manager, presence: { message: "Campo obligatorio" }
    validates :phone, :numericality => {:only_integer => true, :message => "Este campo debe ser numérico"}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "Formato incorrecto de correo electrónico"}
end
