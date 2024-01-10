class Student < ApplicationRecord
  belongs_to :school
  has_many :metrics
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'
end
