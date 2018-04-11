namespace :firmware do
  desc "Install firmware on devices.  Use rake firmware:install {worker_name} to install firmware on a device.  Use rake firmware:install {worker_name} {instance_name} to install firmware and set a name for the device."
  task :install, [:worker, :name] => [:environment] do |task, args|
    if args[:name] == nil
      Apiotics::Hardware.openocd(args[:worker], nil)
    else
      Apiotics::Hardware.openocd(args[:worker], args[:name])
    end
  end
end