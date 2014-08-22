require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/thirstygames.sqlite3")

APP_ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '..')))

Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end
