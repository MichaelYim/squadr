class Api::SquadsController < ApplicationController
  respond_to :json

  def index
    serialized_squads =
      ActiveModel::ArraySerializer
               .new(Squad.all, each_serializer: SquadSerializer)

    render json: serialized_squads
  end

  def update
    squad = Squad.find(params[:id])
    if squad.update(squad_params)
      render json: squad
    else
      render json: squad.errors.messages, status: :bad_request
    end
  end

  private

  def squad_params
    attributes = [
      :name,
      :email,
      :max,
      :event
    ]

    params.require(:squad).permit(attributes)
  end
end