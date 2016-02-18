require 'active_record'
require './database_connection.rb'

class EmployeeMigration < ActiveRecord::Migration
  def change
    create_table :employee do |t|
      t.references :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :salary, precision: 11, scale: 2
      t.text :review
      t.boolean :satisfactory
      t.timestamps
    end

    create_table :department do |t|
      t.string :name
      t.timestamps
    end
  end
end
