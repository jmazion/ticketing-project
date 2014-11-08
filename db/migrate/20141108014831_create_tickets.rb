class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :event_title
      t.string :event_type
      t.string :venue
      t.string :date
      t.string :time
      t.integer :tickets_available
      t.integer :total_tickets

      t.timestamps
    end
  end
end
