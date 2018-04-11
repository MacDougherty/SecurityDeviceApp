class CreateSecurityDeviceMotionSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :security_device_motion_sensors do |t|
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.boolean :motion
      t.boolean :motion_ack
      t.boolean :motion_complete
      
      
      t.integer :security_device_id
      t.timestamps
    end
  end
end