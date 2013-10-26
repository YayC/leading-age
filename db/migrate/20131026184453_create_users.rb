class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :auth_token
      t.datetime :auth_token_expires_at
      t.string :password_reset_token
      t.datetime :password_reset_expires_at
      t.string :timezone

      t.timestamps
    end
  end
end
