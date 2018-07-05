class CreateRidesFromYellows < ActiveRecord::Migration[5.2]
  def change
    create_table :rides_from_yellows do |t|

      t.timestamps
    end
  end
end
