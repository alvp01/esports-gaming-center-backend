class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
