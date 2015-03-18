#
# Cookbook Name:: remote_deploy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file '/opt/pivotal/pivotal-tc-server-standard/tcjenkins/webapps/jenkins.war' do 

source 'http://mirrors.jenkins-ci.org/war/latest/jenkins.war'
use_last_modified false #true by default
#owner 'root'
#group 'root'
#mode '755'
end


