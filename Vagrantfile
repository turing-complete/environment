Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.provider 'virtualbox' do |config|
    config.memory = '2048'
  end
  (Dir['parent/bin/*.sh'].sort + Dir['bin/*.sh'].sort).each do |path|
    config.vm.provision 'shell', path: path, privileged: false, keep_color: true
  end
end
# vim: ft=ruby
