#!/usr/bin/env fish
cat ~/git_options_presets/$argv[1].preset | string replace -r ".*: " "" | string join " " | read -l token user repo branch
echo "$token $user $repo $branch"
set url "https://$token@github.com/$user/$repo.git"
git push "$url" $branch
