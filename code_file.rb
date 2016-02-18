require 'active_record'
require './database_connection'
require './department'
require './employee'
require './migration'

EmployeeMigration.migrate(:up)
