JanRandom
=========

Populate your Janrain database with randomized fake users.

## Usage

    janrandom init {myapp}

Initialize your app for random user generation. `{myapp}` is just the name
you will refer to the app as with janrandom... it doens't have to match the
domain name or anything.

This command will prompt you for Capture domain, client id, and secret,
and save those credentials, as well as the app schema in a config file. You can
view (or edit) the schema for any of the the apps you have initialized in the
`.appconfig` file.

    janrandom create {myapp} [number]

Create {number} random users in your Janrain Capture app

    janrandom uncreate {myapp}

Uncreate all random users created with this script

This script works by adding an attribute to the app schema called
"janRandomGenerated". That attribute is set to true for all users created with
this script. Calling "uncreate" simply makes an `entity.bulkDelete` API call on
all records with th "janRandomGenerated" flag set.

    janrandom uninit {myapp}

Remove the "janRandomGenerated" flag from the app schema:


