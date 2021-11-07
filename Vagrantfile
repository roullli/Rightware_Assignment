
Vagrant.configure("2") do |config|
  config.vm.network :private_network, ip: "172.20.0.4"
  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.remains_running = true
  end
end

# ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'
# Vagrant.configure("2") do |config|

#   config.ssh.username   = 'test'
#   config.ssh.password   = 'test'

#   config.hostmanager.enabled           = true
#   config.hostmanager.manage_guest      = true

#   config.vm.provider "docker" do |d|
#     d.build_dir       = "."
#     d.has_ssh         = true
#     d.remains_running = true
#   end

#   config.vm.hostname = "ansible"
#   config.vm.network "forwarded_port", guest: 8080, host: 7000, host_ip: "127.0.0.1", auto_correct: true
#   config.vm.provision :hostmanager
#   config.vm.provision :ansible do |ansible|
#     ansible.playbook      = "ansible/run.yml"
#     ansible.sudo          = true
#   end

# end
# Vagrant.configure("2") do |config|
#     config.ssh.insert_key   = false
#     config.ssh.username   = "test"
#     config.ssh.password   = "test"
#     config.ssh.host       = "172.20.0.2"
#     config.ssh.port       = "22"
#     # config.hostmanager.enabled           = true
#     # config.hostmanager.manage_guest      = true
#     config.vm.network :private_network, ip: "172.20.0.2"
#     config.vm.provider "docker" do |d|
#       d.build_dir = "."
#       d.has_ssh         = true
#       d.remains_running = true
#     end
#     # config.vm.provision "hostmanager"
#     config.vm.hostname = "ansible"
#     config.vm.provision "ansible" do |ansible|
#       ansible.playbook = "playbook.yml"
#     end
# end