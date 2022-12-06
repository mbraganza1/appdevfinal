class MomentsController < ApplicationController
  def index
    matching_moments = Moment.all

    @list_of_moments = matching_moments.order({ :created_at => :desc })

    render({ :template => "moments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_moments = Moment.where({ :id => the_id })

    @the_moment = matching_moments.at(0)

    render({ :template => "moments/show.html.erb" })
  end

  def create
    the_moment = Moment.new
    the_moment.title = params.fetch("query_title")
    the_moment.time = params.fetch("query_time")
    the_moment.game_id = params.fetch("query_game_id")
    the_moment.caption = params.fetch("query_caption")
    the_moment.image = params.fetch("query_image")

    if the_moment.valid?
      the_moment.save
      redirect_to("/moments", { :notice => "Moment created successfully." })
    else
      redirect_to("/moments", { :alert => the_moment.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_moment = Moment.where({ :id => the_id }).at(0)

    the_moment.title = params.fetch("query_title")
    the_moment.time = params.fetch("query_time")
    the_moment.game_id = params.fetch("query_game_id")
    the_moment.caption = params.fetch("query_caption")
    the_moment.image = params.fetch("query_image")

    if the_moment.valid?
      the_moment.save
      redirect_to("/moments/#{the_moment.id}", { :notice => "Moment updated successfully."} )
    else
      redirect_to("/moments/#{the_moment.id}", { :alert => the_moment.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_moment = Moment.where({ :id => the_id }).at(0)

    the_moment.destroy

    redirect_to("/moments", { :notice => "Moment deleted successfully."} )
  end
end
