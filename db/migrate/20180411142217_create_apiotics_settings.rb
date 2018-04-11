class CreateApioticsSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :apiotics_settings do |t|
      t.string :key
      t.text :value
      t.timestamps
    end
  end
end