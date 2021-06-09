class CreateProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :overview
      t.text :goals
      t.float :price
      t.date :expiry_date
      t.string :primary_color
      t.string :banner
      t.references :user, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
