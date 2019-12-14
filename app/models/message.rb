class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates_presence_of :content

  after_create :send_message

  private

  def send_message
    MessageSenderJob.perform_now(self)
  end
end
