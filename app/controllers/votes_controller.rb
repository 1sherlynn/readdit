class VotesController < ApplicationController
  before_action :ensure_login

  def create
  	@story = Story.find(params[:story_id])
    if @vote = @story.votes.create(user: @current_user)
	    respond_to do |format|
	    	format.js { }
	    	format.html { redirect_to @story, notice: 'Vote was successfully created.' }
	    end
	end
  end

end


