class CreateCollectbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :collectbooks do |t|
      t.string :title
      t.string :author
      t.float :price
      t.date :time

      t.timestamps
    end
  end
end
