class Invite < ApplicationRecord
    belongs_to :event
    belongs_to :invited, class_name: 'User'
end
