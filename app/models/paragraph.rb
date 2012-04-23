class Paragraph < ActiveRecord::Base
  belongs_to :work
  belongs_to :character
end
