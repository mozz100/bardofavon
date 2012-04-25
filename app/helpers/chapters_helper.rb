module ChaptersHelper
  def link_to_next_chapter
    next_chapter = @chapter.work.chapters.order('Act, Scene').where('Act * 1000 + Scene > ?', [@chapter.Act * 1000 + @chapter.Scene]).first
    if next_chapter
      chapter_title(next_chapter)
    else
      content_tag :p, "THE END"
    end
  end
end
