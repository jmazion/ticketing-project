class CreateUserBookings < ActiveRecord::Migration
  def change
    create_table :user_bookings do |t|

      t.timestamps
    end
  end
end
