maintainer       "{{ cookiecutter.full_name }}"
maintainer_email "{{ cookiecutter.email }}"
license          "Apache 2.0"
description      "Installs/Configures {{ cookiecutter.repo_name }}"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "{{ cookiecutter.version }}"
name             "{{ cookiecutter.repo_name }}"

%w{
  {{ cookiecutter.os }}
}.each do |os|
  supports os
end

%w{
  {{ cookiecutter.depends }}
}.each do |c|
  depends c
end
