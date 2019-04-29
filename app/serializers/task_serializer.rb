class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :editable
  # , :user_id
  has_many :steps
  has_one :user

  def editable
    scope == object.user
  end
  #step 7
end
