namespace :db do
  Sequel.extension :migration

  desc 'Create a database based on the config(db/config.yml)'
  task :create do
    connection.run "CREATE DATABASE #{database_config[:name]}"
  end

  desc 'Drops the database based on the config(db/config.yml)'
  task :drop do
    connection.run "DROP DATABASE #{database_config[:name]}"
  end

  desc 'Migrate the database using migration files(db/migrations/)'
  task :migrate, [:version] do |t, args|
    if args[:version]
      puts "Migrating to version #{args[:version]}"
      Sequel::Migrator.run(database, "db/migrations", target: args[:version].to_i)
    else
      puts "Migrating to latest"
      Sequel::Migrator.run(database, "db/migrations")
    end
  end

  desc 'Rollback the database' 
  task :rollback, :target do |t, args|
    args.with_defaults(target: 0)

    Sequel::Migrator.run(database, "db/migrations", target: args[:target].to_i)
  end

  private

  def database
    Database.database 
  end

  def connection
    Sequel.connect database_config[:connection]
  end

  def database_config
    config = Database.database_config
    name = config.delete 'database'

    { connection: config, name: name }
  end

end
