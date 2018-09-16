class ChangeCategoryIdToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :category_id, 'integer USING CAST(category_id AS integer)'
  end
end
