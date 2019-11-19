class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :start_hour
      t.time :end_hour

      t.timestamps
    end
  end
end
