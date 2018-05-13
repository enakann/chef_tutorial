package 'tree' do
  action:install
end

package 'ntp'

package 'vim' do
  action:install
end

package 'git' do
   action:install
end

file '/home/vagrant/notes' do
   content "This is  notes for kannan"
   action:create
   owner 'kannan'
   group 'kannan'
end



file '/etc/motd' do
  content "This server is the property of kannan
  HOSTNAME:#{node['hostname']}
  IPADDRESS:#{node['ipaddress']}
  CPU:#{node['cpu']['0']['mhz']}
  MEMORY:#{node['memory']['total']}
"
  owner 'root'
  group 'root'
  action:create
end
