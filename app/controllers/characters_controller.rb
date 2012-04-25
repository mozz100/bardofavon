class CharactersController < ApplicationController
  before_filter :load_work

  def index
    @characters = @work.characters.order('name').where('abbrev NOT IN (?)', ['All', 'xxx'])   #  should be in order of appearance... query challenge!
  end

  private

  def load_work
    @work = Work.find(params[:work_id])
  end
end
