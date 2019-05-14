# The OCHS STEM Club Programmer's guide to Git and GitHub
##### Version 1.01, 5/13/19
The purpose of this document is to provide helpful information on how to do various things using Git and GitHub. This guide is on using Git in the Terminal, but almost everything can be done using the graphical GitHub Desktop tool (only on Windows).

This guide doesn't go over more advanced things like setting up SSH keys, signing with GPG keys, and merge conflicts to name a few things.

**NOTICE for Windows Users:** Whenever this guide says to open a Terminal, you'll need to open "Git Shell" which can be found by simply searching for "git shell" in the Start Menu. It will open a PowerShell window which you will run commands in.

## Table of Contents
- [Setting up](#setting-up)
- [Cloning](#cloning-a-repository)
- [Commiting](#commiting-changes)
- [Pushing](#pushing-changes)
- [Pulling](#pulling)
- [Switching branches](#switching-branches)

## Setting Up
If this is your first time using Git on your computer, or you're on a new computer and don't remember how to get everything set up, then this section is for you.
#### Step 1: Download Git
First you'll need Git on your computer. If you're on Windows, [install GitHub Desktop](https://desktop.github.com/). If you're on Linux, Git can be easily installed through your package manager:
###### Debian-Based (ex. Debian, Ubuntu)
```sudo apt install git```
###### RedHat-Based (ex. RHEL, Fedora, CentOS)
```sudo yum install git```
(If you're on Fedora, replace "yum" with "dnf")

On Mac you can install using [Homebrew](https://brew.sh/): ```brew install git```

#### Step 2: Configure Git
Once you have Git installed it's time to edit a few configuration options. Open a terminal and type in the following commands:

**NOTICE:** For the email below, you need to be aware that it will be publicly displayed on GitHub. If you don't want that to happen, just use the Noreply email address provided by GitHub:
```[your username]@users.noreply.github.com```

```git config --global "user.name" [Insert your GitHub username here]```

```git config --global "user.email" [Insert your email here]```

Now you're all set!

## Cloning a Repository
In Git, *cloning* a repository is basically downloading a repository. Once it's cloned you can make modifications and push those changes if you want to.

**NOTICE:** Cloning a repository will create a directory in your current directory that is named the same as the repository. All the contents will be put in there.

Cloning is easy. Simply find the URL of the repository on GitHub and then run the command:
```git clone [URL]```

For example, let's say I want to clone the *programming-resources* repository. I would run:
```git clone https://github.com/OCHS-STEM-Club/programming-resources.git```

## Commiting Changes
So you've made some changes to a repository you've cloned, and now you want to push them. Great!

#### Step 0: Setting Commit Account
Before you actually commit anything, you should always ensure that the git username and email are set to your own, as per the step 2 in Configure Git.  For more personal computers or projects, this won't be an issue, but on computers on which multiple users will be making commits, it's good to ensure you get credit for your hard work!

#### Step 1: Checking your changes
It's a good idea to check what you've changed before committing anything. To do that, simply run ```git commit```, and it should display a list of what changes haven't been committed yet.

#### Step 2: Adding changes
Once you're ready, you can run ```git add -A``` to add all your changes. 

#### Step 3: Commiting
Now you have to run ```git commit```, which will then pop up a Notepad instance for you to type your *commit message*. A good *commit message* should be less than 50 characters. If you need to write more, create a new line underneath the first one and type the rest of your message there.

In summary, here is a full list of what to run when committing:

```
git commit
git add -A
git commit
```

Now you're ready to push!

## Pushing Changes
Once you've committed some code you can push it to the server, and it'll show up on GitHub. Pushing is easy, simply run: ```git push``` and you're done!

## Pulling
You'll probably want to update your local repository copy to get changes that other people have pushed to GitHub. To do this, simply run ```git pull```

**NOTICE:** If you've made any changes you could be in danger of a *merge conflict*, which is when someone made a change to a file that you've changed too. If the changes don't overlap on any lines, then Git will automatically merge them together. But if someone made a change on the same line you did, you'll need to resolve it manually, which is outside the scope of this guide, at least for now. Make sure to communicate with your team so you avoid conflicts.

## Switching Branches
By default, when you *clone* a new repository, it will *checkout*, or download the default branch, which is usually ```master```. Doing work on ```master``` is fine, but if you're working on a big feature or working on very unstable or untested code, you should work on a seperate branch. But in order to do that you need to be able to switch your branch. That's what this section is about.

#### Viewing your current branch
Depending on what shell you're using, it may show you what branch you're currently on. If not, simply run ```git branch``` and it will output your current branch.

#### Switching your branch
Switching your branch is easy. Simply run ```git branch [the branch you want to switch to]``` and then ```git pull``` to make sure you're up to date.
