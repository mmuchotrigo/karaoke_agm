# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date_time  :datetime
#  capacity   :integer
#  about      :string
#  locals_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  belongs_to :salas
end
