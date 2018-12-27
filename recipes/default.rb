#
# Cookbook:: jenkinsme
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# install java 8 openjdk
include_recipe 'java'

# Add jenkins repo
yum_repository 'jenkins' do
  baseurl 'https://pkg.jenkins.io/redhat-stable'
  description 'Jenkins-stable'
  gpgkey 'https://pkg.jenkins.io/redhat-stable/jenkins.io.key'
end

# install jenkins
package 'jenkins'

# enable and start jenkins
service 'jenkins' do
  action [:start, :enable]
end
