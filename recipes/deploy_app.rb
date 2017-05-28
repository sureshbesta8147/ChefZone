#
# Cookbook:: tomcatcookbook
# Recipe:: deploy_app
#
# Copyright:: 2017, The Authors, All Rights Reserved.
remote_file node['tomcatcookbook']['appdeploylocation'] do
  source node['tomcatcookbook']['applocation']
  action :create
  notifies :restart, "service[#{ node['configuretomcat']['package_name']}]"
end
