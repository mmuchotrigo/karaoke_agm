# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  birthday   :date
#  email      :string
#  telephone  :string
#  gender     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ActiveRecord::Base
end
