class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  validates :content, length: { minimum: 3, maximum: 100 }
end
