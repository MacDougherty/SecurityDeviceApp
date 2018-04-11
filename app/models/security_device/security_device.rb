module SecurityDevice
  class SecurityDevice < ApplicationRecord
    
      
        
          has_one :motion_sensor, dependent: :destroy
          accepts_nested_attributes_for :motion_sensor
        
          has_one :sound_sensor, dependent: :destroy
          accepts_nested_attributes_for :sound_sensor
        
          has_one :vibration_sensor, dependent: :destroy
          accepts_nested_attributes_for :vibration_sensor
        
      
    
  end
end