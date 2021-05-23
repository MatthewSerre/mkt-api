class AddDefaultValueToDriversIsAllClearPipe < ActiveRecord::Migration[6.1]
  def change
    change_column_default :drivers, :is_all_clear_pipe, false
  end
end
