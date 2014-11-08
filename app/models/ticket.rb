class Ticket < ActiveRecord::Base
validates :event_title, presence: true, length: { minimum: 1 }
validates :event_type, presence: true, length: { minimum: 1 }
validates :venue, presence: true, length: { minimum: 1 }
validates :date, presence: true, length: { minimum: 1 }
validates :time, presence: true, length: { minimum: 1 }
validates :tickets_available, presence: true, length: { minimum: 1 }
validates :total_tickets, presence: true, length: { minimum: 1 }
end