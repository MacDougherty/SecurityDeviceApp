class CreateSecurityDeviceSoundSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :security_device_sound_sensors do |t|
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :data, limit: 4
      t.boolean :data_ack
      t.boolean :data_complete
      
      
      t.integer :security_device_id
      t.timestamps
    end
  end
end