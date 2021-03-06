class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :date
      t.text :content
      t.references :charity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
