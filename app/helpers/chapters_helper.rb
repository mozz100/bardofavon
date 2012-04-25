module ChaptersHelper
  def link_to_next_chapter
    next_chapter = @chapter.work.chapters.order('act, scene').where('act * 1000 + scene > ?', [@chapter.act * 1000 + @chapter.scene]).first
    if next_chapter
      chapter_title(next_chapter)
    else
      content_tag :p, "THE END"
    end
  end
end
