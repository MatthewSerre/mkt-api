class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :rarity
      t.string :special_skill
      t.string :debut_tour
      t.datetime :date_added
      t.boolean :has_extended_tongue
      t.boolean :has_horns
      t.boolean :has_mustache
      t.boolean :has_shell
      t.boolean :has_three_hairs
      t.boolean :is_baby
      t.boolean :is_daily_select
      t.boolean :is_kong
      t.boolean :is_koopaling
      t.boolean :wears_crown
      t.boolean :wears_dress
      t.boolean :wears_earrings
      t.boolean :wears_gloves
      t.boolean :wears_hat
      t.boolean :wears_helment
      t.boolean :wears_ribbon
      t.boolean :wears_short_sleeves
      t.boolean :wears_tie

      t.timestamps
    end
  end
end
