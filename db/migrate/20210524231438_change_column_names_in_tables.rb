# frozen_string_literal: true

class ChangeColumnNamesInTables < ActiveRecord::Migration[6.1]
  def change
    change_table :drivers do |t|
      t.rename :is_all_clear_pipe, :is_in_pipes
    end
    change_table :karts do |t|
      t.rename :is_all_clear_pipe, :is_in_pipes
    end
    change_table :gliders do |t|
      t.rename :is_all_clear_pipe, :is_in_pipes
    end
  end
end
