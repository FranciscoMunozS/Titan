class CreateTitanRoles < ActiveRecord::Migration[5.2]
  def up
    ['superadmin', 'admin', 'editor'].each do |role_name|
      Role.create! name: role_name
    end
  end
  def down
    Role.where(name: ['superadmin', 'admin', 'editor']).destroy_all
  end
end
