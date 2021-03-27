class AddTableMenu < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|

      t.string :display_name
      t.string :value

      t.timestamps null: false
    end
  end
end
