#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum"
include_recipe "java"

 
yum_repository "jenkins" do
  baseurl "http://pkg.jenkins-ci.org/redhat"
  gpgkey "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
  #components ["binary/"]
  action :create
end

package 'jenkins'  

service 'jenkins' do 
  supports [:stop, :start, :restart]
  action [:start, :enable]
end

