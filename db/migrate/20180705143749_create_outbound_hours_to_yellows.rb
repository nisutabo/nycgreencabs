class CreateOutboundHoursToYellows < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_hours_to_yellows do |t|

      t.timestamps
    end
  end
end
