# frozen_string_literal: true

class AddPositionToGliders < ActiveRecord::Migration[6.1]
  def change
    add_column :gliders, :position, :integer
  end
end
