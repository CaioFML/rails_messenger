class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :contacts
  has_many :sent, class_name: "Message", foreign_key: "sender_id"
  has_many :received, class_name: "Message", foreign_key: "receiver_id"

  validates_presence_of :name

  has_one_attached :photo
end
