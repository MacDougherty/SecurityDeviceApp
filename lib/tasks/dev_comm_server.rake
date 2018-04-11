namespace :dev_comms do
  desc "Start local communication server"
  task start: :environment do
    system("ruby", "#{Rails.root}/lib/scripts/dev_server_control.rb", "start")
    puts $?
  end

  desc "Stop local communication server"
  task stop: :environment do
    system("ruby", "#{Rails.root}/lib/scripts/dev_server_control.rb", "stop")
    puts $?
  end
  
  desc "Restart local communication server"
  task restart: :environment do
    system("ruby", "#{Rails.root}/lib/scripts/dev_server_control.rb", "restart")
    puts $?
  end
end