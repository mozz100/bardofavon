module ApplicationHelper
  def chapter_title(chapter)
    ("Act #{ chapter.act }, Scene #{ chapter.scene } - " + link_to(chapter.description, chapter)).html_safe
  end
end
