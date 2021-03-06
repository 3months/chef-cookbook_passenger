
default[:passenger][:version]     = "4.0.5"
default[:passenger][:prerelease]  = false
default[:passenger][:max_pool_size] = "6"
default[:passenger][:root_path]   = "#{languages[:ruby][:gems_dir]}/gems/passenger-#{passenger[:version]}"
default[:passenger][:module_path] = "#{passenger[:root_path]}/ext/apache2/mod_passenger.so"

# rbenv integration
default[:passenger][:rbenv][:enabled] = false
default[:passenger][:rbenv][:version] = "ruby-1.9.2-p290-patched"
default[:passenger][:rbenv][:binary] = "/usr/local/rbenv/versions/#{node[:passenger][:rbenv][:version]}/bin/ruby"
default[:passenger][:rbenv][:root_path] = "/usr/local/rbenv/versions/#{node[:passenger][:rbenv][:version]}/lib/ruby/gems/2.0.0/gems/passenger-#{passenger[:version]}"
default[:passenger][:rbenv][:module_path] = "#{passenger[:rbenv][:root_path]}/libout/apache2/mod_passenger.so"
