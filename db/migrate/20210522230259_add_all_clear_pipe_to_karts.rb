class AddAllClearPipeToKarts < ActiveRecord::Migration[6.1]
  def change
    add_column :karts, :is_all_clear_pipe, :boolean
  end
end
