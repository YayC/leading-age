class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :sessionId
      t.boolean :public
      t.boolean :assigned
      t.integer :user_id

      t.timestamps
    end
  end
end
