#!/usr/bin/env ruby
#coding:utf-8

require 'colorize'

branch_name = `git branch -ra | grep "^*" | sed -e 's/* //g'`

puts "What's your modifications ?".blue
modif = gets
while ((modif.size - 1) == 0) do
    puts "What's your modifications ?".blue
    modif = gets
end

system("git add .")
system("git commit -m \"["+ branch_name.delete_suffix("\n") +"] => "+ modif +"\"")
system("git push")