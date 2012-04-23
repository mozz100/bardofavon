class Work < ActiveRecord::Base
  has_many :paragraphs
  has_many :chapters
  has_many :characters, :through => :paragraphs, :uniq => true
end
