class CreateSecurityDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :security_device_security_devices do |t|
      t.string :apiotics_instance
      t.string :name
      t.timestamps
    end
  end
end