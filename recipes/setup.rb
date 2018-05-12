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

file '/etc/motd' do
  content "This server is the property of kannan"
  action:create
  owner 'root'
  group 'root'
end
