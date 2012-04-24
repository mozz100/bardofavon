class Character < ActiveRecord::Base
  has_many :paragraphs
  has_many :chapters, :through => :paragraphs, :uniq => true
  has_many :works, :through => :chapters, :uniq => true
end
