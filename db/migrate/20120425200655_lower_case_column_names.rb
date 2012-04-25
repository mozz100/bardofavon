class LowerCaseColumnNames < ActiveRecord::Migration
  def self.up
    # rename_column :table_name, :old_column, :new_column
    rename_column :chapters, :Act, :act
    rename_column :chapters, :Scene, :scene
    rename_column :chapters, :Description, :description

    rename_column :characters, :Abbrev, :abbrev
    rename_column :characters, :CharName, :name
    rename_column :characters, :Description, :description

    rename_column :paragraphs, :ParagraphNum, :paragraph_num
    rename_column :paragraphs, :PlainText, :plain_text

    rename_column :works, :Title, :title
    rename_column :works, :LongTitle, :long_title
    rename_column :works, :Date, :year
    rename_column :works, :GenreType, :genre
  end

  def self.down
    raise 'No reverse migration'
  end
end
