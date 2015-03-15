class SquadSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :event, :max
end