class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    @paragraphs = @chapter.paragraphs.order('ParagraphNum').includes(:character)
  end
end
