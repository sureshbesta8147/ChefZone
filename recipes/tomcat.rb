if node['platfrom'] == 'ubutnu'
   apt_update
else
   execute 'yum update' do
     command 'yum -y update'
     action :run
   end
 end  

package_name =node['tomcatcookbook']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end  

          
