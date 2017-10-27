#!/bin/sh
rm -f github_users.json ghusers/*
# To reuse all data (repo metadata, commits, users)
ruby ghusers.rb
# To force fetch new commits (it will resue repos metadata & users)
# 1st arg is: 'r' - force repos metadata fetch, 'c' - force commits fetch, 'u' force users fetch
# ruby ghusers.rb c
# ruby ghusers.rb rcu
./encode_emails.rb github_users.json temp
mv temp github_users.json
