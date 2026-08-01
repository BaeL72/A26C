#!/usr/bin/env fish

argparse h/help -- $argv
or exit 1

if set -q _flag_help
    echo "Usage: ./gps.fish <token> <user> <repo> <branch>"
    echo ""
    echo "	-h, --help	Show this help message"
    exit 0
end

if test (count $argv) -ne 4
    echo "Arguments count is not 4!"
    exit 1
end

set token $argv[1]
set user $argv[2]
set repo $argv[3]
set branch $argv[4]

set url "https://$token@github.com/$user/$repo.git"

git push "$url" $branch
