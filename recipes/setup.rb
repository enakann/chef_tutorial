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

template '/home/vagrant/first_python.py' do
   source 'first.erb'
   owner 'vagrant'
   group 'vagrant'
   action:create
end

cron 'py_script1' do
  minute '0,10,15,20,25,30,35,40,45,50,55'
  hour   '*'
  command '/home/vagrant/first_python.py >> /home/vagrant/log'
  user 'vagrant'
end
