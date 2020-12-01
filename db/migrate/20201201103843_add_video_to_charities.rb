class AddVideoToCharities < ActiveRecord::Migration[6.0]
  def change
  	add_column :charities, :video, :string
  end
end
