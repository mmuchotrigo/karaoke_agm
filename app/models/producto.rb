# == Schema Information
#
# Table name: productos
#
#  id          :integer          not null, primary key
#  type        :string
#  name        :string
#  price       :decimal(, )
#  available   :boolean
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Producto < ActiveRecord::Base
  belongs_to :category
  
    def category_name    
    self.category.name  
    end
    
    validates :name, presence: true, 
                   uniqueness: {case_sensitive: false} 
    validates :category, presence: true
end
