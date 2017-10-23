# bulk-clean-repos
This project is to showcase how to clean all the repos from a git repos using shell and node


### Clone or backup all repos 

curl -s https://api.github.com/users/peripona/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["clone_url"]} ]}'

### Steps followed 
1. fetch all the repos names ( run )
1. create a text file and write repo names in it 
1. generate a Authorization Token for repo delete access 
1. use this token in bash file 
1. run the bash

#### Requirements 
1. You on mac
2. Your github repo link
3. Node Js installed on system
4. Git Authorization token 

> Tested with my repo on mac. 