class CreateSecurityDeviceVibrationSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :security_device_vibration_sensors do |t|
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.boolean :threshold_exceeded
      t.boolean :threshold_exceeded_ack
      t.boolean :threshold_exceeded_complete
      
      
      t.integer :security_device_id
      t.timestamps
    end
  end
end