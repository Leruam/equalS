class AddWebsiteToCharities < ActiveRecord::Migration[6.0]
  def change
    add_column :charities, :website, :string
  end
end
