# frozen_string_literal: true

class AddDebutSystemToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :debut_system, :string
  end
end
