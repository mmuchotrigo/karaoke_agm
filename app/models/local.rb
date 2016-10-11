# == Schema Information
#
# Table name: locals
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  phone       :string
#  email       :string
#  description :string
#  manager_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Local < ActiveRecord::Base
  belongs_to :manager
  
  def manager_name    
    self.manager.name
  end
  validates :name, presence: { message: "Campo obligatorio" }
  validates :name, :address, :email, :description, presence: { message: "Campo obligatorio" }
  validates :phone, :numericality => {:only_integer => true, :message => "Este campo debe ser numérico"}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "Formato incorrecto de correo electrónico"}
  validates :manager, presence: true
end
