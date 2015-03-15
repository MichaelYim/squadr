class Api::SquadsController < ApplicationController
  respond_to :json

  def index
    serialized_squads =
      ActiveModel::ArraySerializer
               .new(Squad.all, each_serializer: SquadSerializer)

    render json: serialized_squads
  end
end