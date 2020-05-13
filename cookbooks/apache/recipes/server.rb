



# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.


package 'httpd'

file '/var/www/html/index.html' do
   content "<h1>FIZBITE</h1>
   HOSTNAME: #{node['hostname']}
   IPADDRESS: #{node['ipaddress']}
   CPU: #{node['cpu'] ['0'] ['mhz']}
   MEMORY: #{node['memory'] ['total']}
"
end

service 'httpd' do
 action [ :enable, :start ]
end


