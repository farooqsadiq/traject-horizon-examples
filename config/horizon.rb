require 'dotenv'
Dotenv.load
require 'traject_horizon'

settings do
  store "reader_class_name", "Traject::HorizonReader"

  # JDBC URL starting with "jdbc:jtds", and either "sybase:"
  # or "sqlserver:", including username on the end but not password:
  provide "horizon.jdbc_url", "jdbc:jtds:sybase://#{ENV['HZ_DB_SERVER']}:#{ENV['HZ_DB_PORT']}/#{ENV['HZ_DB_DATABASE']};user=#{ENV['HZ_DB_USER']}"

  # Instead of horizon.jdbc_url, you can also use individual
  # horizon.host, horizon.port, horizon.database, horizon.user

  # DB password in seperate setting
  provide "horizon.password", ENV['HZ_DB_PASSWORD']

  # Do you want to include copy/item holdings information?
  # this setting says to include "top-level" holdings,
  # copy or item but not both. Holdings will be included
  # in tags 991 and 937, although the tags and nature
  # of included holdings is configurable.
  provide "horizon.include_holdings", "direct"

  # Would you like to exclude certain tags from
  # your Horizon db?  If you are including holdings,
  # then it's recommended to exclude 991 and 937 to
  # avoid any collision with the tags we add to represent holdings.
  provide "horizon.exclude_tags", "991,937"
end

