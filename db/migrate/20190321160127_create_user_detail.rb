class CreateUserDetail < ActiveRecord::Migration[5.2]
  def up
    User.create(:name => "Admin")
    User.create(:name => "System Team")
    User.create(:name => "Developer")
    User.create(:name => "Tester")
  end

  def down
    User.all.destroy
  end
end
