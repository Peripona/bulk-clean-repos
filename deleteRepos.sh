chmode chmod +x deleteRepos.sh
while read r; do curl -XDELETE -H 'Authorization: token xxx' "https://api.github.com/repos/$r ";done < repos.txt
