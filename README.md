JanRandom
=========

Populate your Janrain database with randomized fake users.


## Installation

Requires Ruby (>=1.9) and rubygems.

#### If you want to be able to hack on this gem yourself:

**Recommended, for now:** Clone the repository, run `bundle install`, and
optionally add a symlink to this directory into your `$PATH`.

    git clone https://github.com/thanj/janrandom.git
    cd janrandom
    bundle install
    sudo ln -s bin/janrandom /usr/bin
    janrandom

#### If you just want to run it:

**Experimental:** Installing via Rubygems is possible.

    gem install janrandom
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

#### Create randomized user records

    janrandom create {myapp} [number]

Create {number} random users in your Janrain Capture app

#### Remove the randomized user records you've created

    janrandom uncreate {myapp}

Uncreates all random users created with this script

#### Reset the app schema to the way it was before running the script

    janrandom uninit {myapp}

Remove the "janRandomGenerated" flag from the app schema:

Note that this doesn't delete the app's client ID and secret from the
`janrandom.appconfig` file. You'll have to do that yourself if you want to do
so.
