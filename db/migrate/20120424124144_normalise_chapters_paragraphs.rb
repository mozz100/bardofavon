class NormaliseChaptersParagraphs < ActiveRecord::Migration
  def up
    # add column to paragraphs table
    add_column :paragraphs, :chapter_id, :integer, :default => 0, :null => false

    # populate new column
    Paragraph.connection.execute("""
      UPDATE paragraphs, chapters 
      SET paragraphs.chapter_id = chapters.id
      WHERE chapters.Act = paragraphs.Act 
        AND chapters.Scene = paragraphs.Scene
        AND chapters.work_id = paragraphs.work_id""")

    # remove redundant columns
    [:work_id, :Act, :Scene].each do |c|
      remove_column :paragraphs, c
    end
  end

  def down
    raise 'No reverse migration'
  end
end
