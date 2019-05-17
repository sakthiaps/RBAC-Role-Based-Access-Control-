class CreateResourcesTable < ActiveRecord::Migration[5.2]

  def up
    create_table :resources do |t|
      t.string :name
      t.string :format
    end
  end
end
