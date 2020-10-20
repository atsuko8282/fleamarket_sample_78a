class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
