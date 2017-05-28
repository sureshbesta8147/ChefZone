#
# Cookbook:: tomcatcookbook
# Recipe:: configure_tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.
template node['tomcatcookbook']['tomcatconfigfile'] do
  source node['tomcatcookbook']['templatename']
  action :create
  notifies :restart, "service[#{ node['tomcatcookbook']['package_name']}]"
 end

 package node['tomcatcookbook']['additional_packages'] do
   action :install
   notifies :restart, "service[#{ node['tomcatcookbook']['package_name']}]"
 end
