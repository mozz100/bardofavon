class Work < ActiveRecord::Base
  has_many :chapters
  has_many :paragraphs, :through => :chapters
  has_many :characters, :through => :paragraphs, :uniq => true
end
