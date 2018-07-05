class CreateOutboundRides < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_rides do |t|

      t.timestamps
    end
  end
end
