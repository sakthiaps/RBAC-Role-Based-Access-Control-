class CreateResourceDetail < ActiveRecord::Migration[5.2]

  def up
    Resource.create(:name => "Local")
    Resource.create(:name => "System folder")
    Resource.create(:name => "Main folder")
  end

  def down
    Resource.all.destroy
  end
end
