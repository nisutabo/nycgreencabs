class CreateOutboundTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_times do |t|

      t.timestamps
    end
  end
end
