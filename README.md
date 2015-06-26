# VagrantPress

*VagrantPress* is a packaged development environment for developing WordPress themes and modules.  
I initially created this project to aid in developing child modules for a WordPress blog.

# What's Installed

+ Ubuntu Trusty (14.04)
+ Wordpress 4.0
+ Mysql
+ Php
+ Phpmyadmin
+ Subversion
+ Git
+ Composer
+ ~~PEAR~~
+ Xdebug
+ PHPUnit - **installed via composer*
+ phploc - **installed via composer*
+ phpcpd - **installed via composer*
+ phpdcd - **installed via composer*
+ phpcs - **installed via composer*
+ phpdepend - **installed via composer*
+ phpmd - **installed via composer*
+ PHP_CodeBrowser - **installed via composer*
+ WordPress sniffs for phpcs
+ WordPress Unit Tests - **installed via composer*

**PEAR removed as support has reached end of life, see [End of Life for PEAR Installation Method](https://github.com/sebastianbergmann/phpunit/wiki/End-of-Life-for-PEAR-Installation-Method)*

# Prerequisites

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
+ [Vagrant Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)

## Getting Started

This is a fairly simple project to get up and running.  
The procedure for starting up a working WordPress is as follows:

1. Run `git clone git@github.com:SquareMileApp/vagrantpress.git`
2. Run `vagrant plugin install vagrant-hostsupdater` from command line
3. Run `git submodule init`
4. Run `git submodule update`
5. Run the command `vagrant up` from the directory
6. Run `vagrant ssh`
7. Run `sudo apt-get install language-pack-en`
8. Open your browser to http://vagrantpress.dev

When you are finihsed using this environment be sure to run

`vagrant suspend`

or else the virtual machine will keep running and use up more battery life than you would probably like.

If you want to completey remove the virtual machine and the WordPress installation (you can rebuild it at any time following the steps above) then run

`vagrant destroy`

## Working with the environment

To log in to the local Wordpress installation:

`http://vagrantpress.dev/wp-admin/` the username is `admin`, the password is `vagrant`.

You can access phpMyAdmin:

`http://vagrantpress.dev/phpmyadmin/` with username `wordpress`, password `wordpress`.

## A Few Details

* If you're needing a password (for anything - including mysql, it should be `vagrant`)

## Working with the Square Mile WordPress theme

This WordPress Vagrant environment has one git repository, squaremile-vagrantpress, and the Square Mile WordPress theme has another repository, squaremile-wordpress-theme. The squaremile-wordpress-theme repository is set up as a Git submodule of the squaremile-vagrantpress repository.

Steps 3 and 4 above in the Getting Started section download the squaremile-wordpress-theme repository.

Editing files in squaremile-vagrantpress/squaremile-wordpress-theme will be reflected immediately in the WordPress installation (after a browser refresh or immediately if you use LiveReload).

To commit changes to the squaremile-wordpress-theme repository you must first `cd` to that directory and then commit your files as per usual.

After a commit in squaremile-wordpress-theme the parent repository, squaremile-vagrantpress, will show the submodule as having changed. Committing a pending change for squaremile-wordpress-theme from the squaremile-vagrantpress directory just tells git what revision of the submodule to checkout when you run `git submodule update`.

In short, if you are making changes to the theme then make commits from within the theme directory. Once you are done with the theme directory then commit the parent directory so it knows which version of your theme to check out the next time you build the environment from scratch.

 
## Getting Help

Feel free to file an issue, create a pull request, or contact me at [my website][chadthompson].

[chadthompson]: http://chadthompson.me
