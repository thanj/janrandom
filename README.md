JanRandom
=========

Populate your Janrain database with randomized fake users.

[![Gem Version](https://badge.fury.io/rb/janrandom.png)](http://badge.fury.io/rb/janrandom)

## Installation

Requires Ruby (>=1.9) and rubygems.

#### If you want to be able to hack on this gem yourself:

Clone the repository, run `bundle install`, and run the command using `ruby
lib/janrandom.rb`.

    git clone https://github.com/thanj/janrandom.git
    cd janrandom
    bundle install
    ruby lib/janrandom.rb

#### If you just want to run it:

Installing via Rubygems is possible. (This adds an executable to your path, so
you will probably need to install using `sudo`.)

    sudo gem install janrandom
    janrandom


## Usage

#### Get started

    janrandom init {myapp}

Initialize your app for random user generation. `{myapp}` is just the name
you will refer to the app as with janrandom... it doens't have to match the
domain name or anything.

This command will prompt you for Capture domain, client id, and secret,
and save those credentials, as well as the app schema in a config file. You can
view (or edit) the schema for any of the the apps you have initialized in the
`janrandom.appconfig` file in your home directory.

This script works by adding an attribute to the app schema called
"janRandomGenerated". That attribute is set to true for all users created with
this script. Calling "uncreate" simply makes an `entity.bulkDelete` API call on
all records with th "janRandomGenerated" flag set.

#### See an example of the records janrandom would create for your app

    janrandom test {myapp}

This will display an example of a record that would be generated with the
`janrandom create` command. Use this (maybe a few times) and look over the
results before running a bulk create. If you want to tweak the type of result
that is generated, you can modify the schema of the app in your
`~/janrandom.appconfig` file.

#### Create randomized user records

    janrandom create {myapp} [number]

Create {number} random users in your Janrain Capture app

#### Remove the randomized user records you've created

    janrandom uncreate {myapp}

Uncreates all random users created with this script

#### Reset the app schema to the way it was before running the script

    janrandom uninit {myapp}

Removes the "janRandomGenerated" flag from the app schema:

Note that this doesn't delete the app's client ID and secret from the
`janrandom.appconfig` file. You'll have to do that yourself if you want to do
so.
