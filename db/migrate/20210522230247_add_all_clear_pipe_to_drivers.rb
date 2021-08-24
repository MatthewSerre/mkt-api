# frozen_string_literal: true

class AddAllClearPipeToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :is_all_clear_pipe, :boolean
  end
end
