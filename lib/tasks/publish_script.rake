namespace :script do
  desc "Publish script to the hive."
  task :publish, [:worker, :name] => [:environment] do |task, args|
    Apiotics::Portal.upload_script(args[:worker], args[:name])
  end
end