class CreateRoles < ActiveRecord::Migration[5.2]

  def up
    create_table :roles do |t|
      t.integer :user_id, :null => false
      t.integer :action_type_id, :null => false
      t.integer :resource_id, :null => false
    end
    add_index(:roles, [:user_id, :resource_id])
  end

  def down
    drop_table(:roles)
  end
end
