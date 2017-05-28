if node['platform'] == 'ubuntu'
  default['tomcatcookbook']['package_name'] = 'tomcat7'
  default['tomcatcookbook']['additional_packages'] = ['tomcat7-docs','tomcat7-admin','tomcat7-examples']
  default['tomcatcookbook']['appdeploylocation'] = '/var/lib/tomcat7/webapps/jenkins.war'
  default['tomcatcookbook']['tomcatconfigfile'] = '/etc/default/tomcat7'
  default['tomcatcookbook']['templatename'] = 'tomcat7.erb'
else
  default['tomcatcookbook']['package_name'] = 'tomcat'
  default['tomcatcookbook']['tomcatconfigfile'] = '/usr/share/tomcat/conf/tomcat.conf'
  default['tomcatcookbook']['templatename'] = 'tomcat.conf.erb'
  default['tomcatcookbook']['additional_packages'] = ['tomcat-webapps','tomcat-admin-webapps','tomcat-docs-webapp','tomcat-javadoc']
  default['tomcatcookbook']['appdeploylocation'] = '/usr/share/tomcat/webapps/jenkins.war'
end

default['tomcatcookbook']['tomcat_welcome'] = 'This is managed by Chef using Templates'
default['tomcatcookbook']['maxpermsize'] = '256m'
default['tomcatcookbook']['maxheapsize'] = '512m'

default['tomcatcookbook']['applocation'] = "http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/2.46.2/jenkins.war"
