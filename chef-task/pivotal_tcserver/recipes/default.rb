#
# Cookbook Name:: pivotal_tcserver
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


tcruntime_instance "tcjenkins" do
  java_home "/usr/lib/jvm/java-1.6.0"
  properties [{'bio.http.port' => '8081'}, {'bio.httpS.port' => '8444'}, {'base.jmx.port' => '6970'}]
  templates ['bio',  'bio-ssl']
end
