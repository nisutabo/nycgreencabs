class CreateOutboundHours < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_hours do |t|

      t.timestamps
    end
  end
end
