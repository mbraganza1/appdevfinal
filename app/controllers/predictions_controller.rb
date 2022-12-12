class PredictionsController < ApplicationController
  def index
    matching_predictions = Prediction.all

    @list_of_predictions = matching_predictions.order({ :created_at => :desc })

    render({ :template => "predictions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_predictions = Prediction.where({ :id => the_id })

    @the_prediction = matching_predictions.at(0)

    render({ :template => "predictions/show.html.erb" })
  end

  def create
    the_prediction = Prediction.new
    the_prediction.prediction = params.fetch("query_prediction")
    the_prediction.user_id = session.fetch(:user_id)
    the_prediction.game_id = params.fetch("query_game_id")

    if the_prediction.valid?
      the_prediction.save
      redirect_to("/predictions", { :notice => "Prediction created successfully." })
    else
      redirect_to("/predictions", { :alert => the_prediction.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_prediction = Prediction.where({ :id => the_id }).at(0)

    the_prediction.prediction = params.fetch("query_prediction")
    the_prediction.user_id = params.fetch("query_user_id")
    the_prediction.game_id = params.fetch("query_game_id")

    if the_prediction.valid?
      the_prediction.save
      redirect_to("/predictions/#{the_prediction.id}", { :notice => "Prediction updated successfully."} )
    else
      redirect_to("/predictions/#{the_prediction.id}", { :alert => the_prediction.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_prediction = Prediction.where({ :id => the_id }).at(0)

    the_prediction.destroy

    redirect_to("/predictions", { :notice => "Prediction deleted successfully."} )
  end
end
