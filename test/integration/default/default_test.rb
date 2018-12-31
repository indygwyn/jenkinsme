# # encoding: utf-8

# Inspec test for recipe jenkinsme::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe yum.repo('jenkins') do
    it { should exist }
    it { should be_enabled }
end

describe package('jenkins') do
    it { should be_installed }
end

describe package('git') do
    it { should be_installed }
end

describe service('jenkins') do
    it { should be_enabled }
    it { should be_running }
end

describe port(8080) do
    it { should be_listening }
end

