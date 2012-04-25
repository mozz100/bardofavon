class CharactersController < ApplicationController
  before_filter :load_work

  def index
    @characters = @work.characters.order('name').where('abbrev NOT IN (?)', ['All', 'xxx'])   #  should be in order of appearance... query challenge!

    # build array of characters with name/abbrev and paragraph count for chart
    # This could be more efficient: it'll hit the db for each character to call SELECT COUNT(*) FROM paragraphs...
    # But hey, Shakespeare wouldn't mind.
    
    @pie_chart = @characters.map do |c|
      {
        :name  => c.name,
        :pcount => c.paragraphs.where(:chapter_id => @work.chapters.map(&:id)).count
      }
    end

    # sort by paragraph count DESC
    @pie_chart.sort! do |e1, e2|
      e2[:pcount] <=> e1[:pcount]
    end
  end

  private

  def load_work
    @work = Work.find(params[:work_id])
  end
end
