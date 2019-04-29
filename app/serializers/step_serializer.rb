class StepSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :url
  has_one :task
end
