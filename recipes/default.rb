#
# Cookbook Name:: chef-recipes-lamp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
	httpd
	php
	php-mbstring
	php-gd
	php-mysql
	php-pear
	}.each do |package|
  action :install
end

service "httpd" do
  action [ :enable, :start ]
end

package "mysql-server" do
  action :install
end

service "mysqld" do
  action [ :enable, :start ]
end
