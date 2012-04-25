class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    @paragraphs = @chapter.paragraphs.order('paragraph_num').includes(:character)
  end
end
