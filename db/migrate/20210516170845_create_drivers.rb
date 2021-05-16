class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :rarity
      t.string :special_skill
      t.string :debut_tour
      t.datetime :date_added
      t.boolean :has_extended_tongue, default: false
      t.boolean :has_horns, default: false
      t.boolean :has_mustache, default: false
      t.boolean :has_shell, default: false
      t.boolean :has_three_hairs, default: false
      t.boolean :is_baby, default: false
      t.boolean :is_daily_select, default: false
      t.boolean :is_kong, default: false
      t.boolean :is_koopaling, default: false
      t.boolean :wears_crown, default: false
      t.boolean :wears_dress, default: false
      t.boolean :wears_earrings, default: false
      t.boolean :wears_gloves, default: false
      t.boolean :wears_hat, default: false
      t.boolean :wears_helment, default: false
      t.boolean :wears_ribbon, default: false
      t.boolean :wears_short_sleeves, default: false
      t.boolean :wears_tie, default: false

      t.timestamps
    end
  end
end
