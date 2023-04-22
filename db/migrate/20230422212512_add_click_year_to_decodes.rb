class AddClickYearToDecodes < ActiveRecord::Migration[5.2]
  def change
    add_column :decodes, :click_year, :string
  end
end
