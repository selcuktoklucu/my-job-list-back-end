class Task < ApplicationRecord
  has_many :steps, :dependent => :delete_all
  belongs_to :user
end
