# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
    
    has_many :productos
    
    validates :name, presence: true, 
                uniqueness: {case_sensitive: false}
end
