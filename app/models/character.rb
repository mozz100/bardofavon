class Character < ActiveRecord::Base
  has_many :paragraphs
  has_many :works, :through => :paragraphs, :uniq => true
end
