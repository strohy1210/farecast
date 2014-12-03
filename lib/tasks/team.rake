namespace :db do
  desc "Drops db, migrates, and seeds db."
  task :full_reset => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
    puts "  You're welcome. Your database be so fresh. So clean."
    puts "    --- <3 Craig."
    puts
  end
end

namespace :db do
  desc "Adds all the CSVs!"
  task :import_csvs => :environment do
    
    Rake::Task['db:import_drom_csv'].invoke
    Rake::Task['db:import_glasslands_csv'].invoke
    Rake::Task['db:import_musichall_csv'].invoke
    
    puts "  CSV's ADDED!"
    puts
  end
end