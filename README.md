![last commit](https://img.shields.io/github/last-commit/arsic-kali/autohack)

# Installation and Setup

Hey new autohack users, hope you enjoy it!

To install and use autohack:

1. Clone it | Type: `git clone --recursive  https://github.com/arsic-kali/autohack.git`

2. `./run.sh` This script will simply add autohack as an alias so you can execute it from anywhere on your machine, you need to be root to run this script. Next, you need to source these changes, so close your terminal and reopen, and it should work. (You only need to run this file once for installation) 

3. Done! You can run it from anywhere on your machine by typing `autohack` or `ah`! Enjoy!

**It is reccommended you run this tool as root. If you type `sudo ./autohack` this will result in a bug. Instead switch to your root user first. You can read more on the bug below and why autohack behaves this way.**

Hope everyone enjoys the concept of this project. I plan to see how many people like and enjoy the script and I plan to develop it everyday and add new functionality. Please report any and all bugs/issues/ideas to the [Discussions](https://github.com/arsic-kali/autohack/discussions) / [Issues](https://github.com/arsic-kali/autohack/issues) board.

Hack on!

- arsic

## Disclaimers

It is highly advised you use kali linux as most of the scripting and development of this tool is under the assumption it is installed on kali.

The `sudo ./autohack` bug: Autohack uses bash string manipulation combined with the `which` utility to figure out where the user installed the repo. At runtime it needs to look for files in the repo to call, if the wrong user environment is used (as is the case with `sudo ./autohack`) it will create a `substring is < 0` bug because it can't find autohack because that current user environment does not have autohack in their path. This is one reason why running the tool as root instead of a sudoer is reccommended.

## Roadmap

Autohack is in it's baby stage still. I am a uni student and i work an internship, but I plan to acivtely start dedicating much more of my free time to push it to it's fullest potential. I first want to script much more functionality into the tool, organize it and clean up the look, this part may take a while as I want autohack to be the framework one would start up to start their ctf challenge, bug bounty, etc. Once I am happy with the core functionality of autohack I plan to create autohackOS, which will be a kali based custom .iso with a fresh look and autohack natively installed and ready to go. This is a very generalized roadmap, if you are interested in the specifics of what is coming to autohack, please check the [projects board](https://github.com/arsic-kali/autohack/projects/1). So if you like autohack now just wait for the future, and please, report any bugs or submit ideas/things you want to see in autohack!
