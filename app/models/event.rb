class Event < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :date, presence: true

    belongs_to :creator, class_name: 'User'

    has_many :event_attendances, foreign_key: :attended_event_id, dependent: :destroy
    has_many :attendees, through: :event_attendances

    has_many :invitations, dependent: :destroy
    has_many :inviteds, dependent: :destroy

    scope :upcoming, -> { where('date >= ?', Date.today) }
    scope :past, -> { where('date < ?', Date.today) }
end
