class Event < ApplicationRecord

    belongs_to :creator, class_name: 'User'

    has_many :event_attendances, foreign_key: :attended_event_id, dependent: :destroy
    has_many :attendants, through: :event_attendances

    has_many :invitations, dependent: :destroy
    has_many :inviteds, dependent: :destroy
end
