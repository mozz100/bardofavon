module ApplicationHelper
  def chapter_title(chapter)
    ("Act #{ chapter.Act }, Scene #{ chapter.Scene } - " + link_to(chapter.Description, chapter)).html_safe
  end
end
