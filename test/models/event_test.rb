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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
