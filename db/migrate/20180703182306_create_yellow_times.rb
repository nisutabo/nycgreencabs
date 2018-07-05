class CreateYellowTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :yellow_times do |t|

      t.timestamps
    end
  end
end
