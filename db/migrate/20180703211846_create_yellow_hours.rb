class CreateYellowHours < ActiveRecord::Migration[5.2]
  def change
    create_table :yellow_hours do |t|

      t.timestamps
    end
  end
end
