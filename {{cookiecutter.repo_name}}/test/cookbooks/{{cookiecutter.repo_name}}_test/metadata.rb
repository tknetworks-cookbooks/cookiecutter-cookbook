maintainer       "{{ cookiecutter.full_name }}"
maintainer_email "{{ cookiecutter.email }}"
license          "Apache 2.0"
description      "Test parent,  {{ cookiecutter.repo_name }} cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "{{ cookiecutter.version }}"
name             "{{ cookiecutter.repo_name }}_test"

depends "{{ cookiecutter.repo_name }}"
