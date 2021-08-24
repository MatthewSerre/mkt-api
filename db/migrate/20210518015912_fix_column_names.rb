# frozen_string_literal: true

class FixColumnNames < ActiveRecord::Migration[6.1]
  def change
    change_table :drivers do |t|
      t.rename :has_extended_tongue, :extended_tongue
      t.rename :has_horns, :horns
      t.rename :has_mustache, :mustache
      t.rename :has_shell, :shell
      t.rename :has_three_hairs, :three_hairs
      t.rename :is_baby, :baby
      t.rename :is_daily_select, :daily_select
      t.rename :is_kong, :kong
      t.rename :is_koopaling, :koopaling
      t.rename :wears_crown, :crown
      t.rename :wears_dress, :dress
      t.rename :wears_earrings, :earrings
      t.rename :wears_gloves, :gloves
      t.rename :wears_hat, :hat
      t.rename :wears_helment, :helmet
      t.rename :wears_ribbon, :ribbon
      t.rename :wears_short_sleeves, :short_sleeves
      t.rename :wears_tie, :tie
    end
  end
end
