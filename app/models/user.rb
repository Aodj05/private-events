class User < ApplicationRecord

  has_many :events, foreign_key: 'creator_id', class_name: 'Event', dependent: :destroy

  has_many :event_attendances, foreign_key: :event_attendance_id, dependent: :destroy
  has_many :attended_events, through: :event_attendances

  has_many :invitations, foreign_key: :invited_id, dependent: :destroy
  has_many :invited_events, through: :invitations, source: :events_id
end
