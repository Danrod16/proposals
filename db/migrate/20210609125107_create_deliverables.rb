class CreateDeliverables < ActiveRecord::Migration[6.0]
  def change
    create_table :deliverables do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
