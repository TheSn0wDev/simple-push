#!/usr/bin/env ruby
#coding:utf-8

require 'colorize'

puts "What's your branch name ?".blue + " (main)".bold
branch_name = gets
if ((branch_name.size - 1) == 0) then
    branch_name = "main"
end
branch_name = branch_name.chomp

puts "What's your modifications ?".blue
modif = gets
while ((modif.size - 1) == 0) do
    puts "What's your modifications ?".blue
    modif = gets
end

system("git add .")
system("git commit -m \"["+ branch_name +"] => "+ modif +"\"")
system("git push")