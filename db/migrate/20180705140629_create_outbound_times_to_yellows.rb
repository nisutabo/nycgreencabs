class CreateOutboundTimesToYellows < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_times_to_yellows do |t|

      t.timestamps
    end
  end
end
