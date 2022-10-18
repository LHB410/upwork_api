require 'database_cleaner/active_record'

RSpec.configure do |config|

  DatabaseCleaner.clean_with :truncation

  DatabaseCleaner.strategy = :transaction

end

