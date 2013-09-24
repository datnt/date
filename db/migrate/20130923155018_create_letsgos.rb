class CreateLetsgos < ActiveRecord::Migration
  def change
    create_table :letsgos do |t|
      t.string :content
      t.integer :user_id
      t.integer :tag

      t.timestamps
    end
    add_index :letsgos, [:user_id, :created_at]
  end
end
