# bulk-clean-repos
This project is to showcase how to clean all the repos from a git repository using shell and node


### Clone or backup all repos 

curl -s https://api.github.com/users/peripona/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["clone_url"]} ]}'

> This might take some time, please make sure all your repos are backed, unless you don't care then leave this step.

### Delete all repos 
1. Open `fetchSaveRepo.js` and update your repos url
1. `node fetchSaveRepo.js`
1. Generate a Authorization Token for repo delete access [token](https://github.com/settings/tokens/new)
1. Copy the token and put in in place `xxx` in `deleteRepos.sh`
1. `./deleteRepos.sh`

> You can also not delete some repos by removing its name from `repos.txt` if you want to keep those projects.

#### Requirements 
1. You on mac
2. Your github repo link
3. Node Js installed on system
4. Git Authorization token 

> Tested with my repo on mac. 
