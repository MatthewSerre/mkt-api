# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :debut_tour
      t.datetime :date_added
      t.string :debut_game
      t.boolean :is_reverse
      t.boolean :is_trick

      t.timestamps
    end
  end
end
