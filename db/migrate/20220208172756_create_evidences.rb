class CreateEvidences < ActiveRecord::Migration[7.0]
  def change
    create_table :evidences do |t|
      t.string :title
      t.string :order
      t.integer :status
      t.string :distributor
      t.text :description

      t.timestamps
    end
  end
end
