# frozen_string_literal: true

class AddColumnToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :position, :integer
  end
end
