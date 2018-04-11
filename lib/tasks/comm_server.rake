namespace :comms do
  desc "Start local communication server"
  task start: :environment do
    if Apiotics.configuration.heroku == true
      system("ruby", "#{Rails.root}/lib/scripts/heroku_server_control.rb", "start")
    else
      system("ruby", "#{Rails.root}/lib/scripts/server_control.rb", "start")
    end
    puts $?
  end

  desc "Stop local communication server"
  task stop: :environment do
    if Apiotics.configuration.heroku == true
      system("ruby", "#{Rails.root}/lib/scripts/heroku_server_control.rb", "stop")
    else
      system("ruby", "#{Rails.root}/lib/scripts/server_control.rb", "stop")
    end
    puts $?
  end
  
  desc "Restart local communication server"
  task restart: :environment do
    if Apiotics.configuration.heroku == true
      system("ruby", "#{Rails.root}/lib/scripts/heroku_server_control.rb", "restart")
    else
      system("ruby", "#{Rails.root}/lib/scripts/server_control.rb", "restart")
    end
    puts $?
  end
end