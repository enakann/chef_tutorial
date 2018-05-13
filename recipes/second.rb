template '/home/vagrant/passing_arg.txt' do
  owner 'vagrant'
  group 'vagrant'
  source 'second.erb'
  variables(
     :name => 'kannan_second'
     )
  action :create
end

