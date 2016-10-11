# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date_time  :datetime
#  capacity   :integer
#  about      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  
  validates :capacity, :numericality => {greater_than_or_equal_to: 0, lower_than_or_equal_to: 100, :message => "Este campo debe ser numérico"}
  validates :name, :about, :date_time, presence: { message: "Campo obligatorio" }
  
end
