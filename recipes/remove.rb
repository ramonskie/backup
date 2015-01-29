gem_package 'fog' do
  action :remove
end
gem_package 'backup' do
  action :remove
end

ruby_block 'remove_recipe_backup_remove' do
  block { node.run_list.remove('recipe[backup::remove]') }
end
