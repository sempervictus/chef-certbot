default[:certbot][:webroot_dir]  = "/var/www/letsencrypt"
default[:certbot][:working_dir]  = "/etc/letsencrypt"
default[:certbot][:rsa_key_size] = 4096
default['certbot']['package']    = case node['platform_family']
when 'arch'
  'certbot'
when 'ubuntu'
  'letsencrypt'
end
default['certbot']['executable']    = "/usr/bin/#{node['certbot']['package']}"
default['certbot']['authenticator'] = :webroot