# frozen_string_literal: true

class ChangeColumnNameForDrivers < ActiveRecord::Migration[6.1]
  def change
    rename_column :drivers, :daily_select, :is_daily_select
  end
end
