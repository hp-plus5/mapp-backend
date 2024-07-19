# README
## Explanation of upcoming content
In my local development, I set this project up as my first RoR on an unfamiliar OS (Ubuntu). This means I'm not used to exactly how to work with environment-associated things like package managers and SSL libraries. I often have code quoted in this README that is specific to my setup with my lack of familiarity. Please forgive that this README has a very specific target audience at times: me.

## The content
* Ruby version
This project uses Ruby version 3.1.2. This means for my own Linux development machine that I need to specify that I'm not using the most up to date version of Ruby *every time I open a new tab or window* for this project. Run `rvm use 3.1.2` on my machine to establish the correct Ruby version.

* To run this folder's code
After establishing my Ruby version, I can use the usual commands without prefix:
`bundle install`
(`sudo service postgresql start` if postgres isn't running)
`rake db:create`
`rails s` or `rails c` as desired

This project will launch by default at `http://127.0.0.1:4000`. Access your graphQL query checker at `http://localhost:4000/graphiql`.


* To run entire project
See the frontend repository for its instructions. They should operate separately. If this app isn't working but the front is, it'll give you an error when you attempt to access any backend data (such as a list of collections).

* System dependencies

* Configuration

* Database creation


* Database initialization
I'm using Postgres. In my own commandline on Linux, to spin up Postgres I run`sudo service postgresql start`. If it gives you an error about port 5426, it means Postgres isn't running. It doesn't matter where in the directories I am when I type this command.

To access it in the commandline, you can type `sudo -i -u postgres`. Or `psql`? Or `sudo -u postgres psql`? It's hazy to me for now.

Use `sudo -i -u postgres` to get to a command line that looks like this: `postgres@Personal-Laptop:~$` 

Use `sudo -u postgres psql` to get to a command line that looks like this:
`postgres=# `. It will give you this error: `could not change directory to "/mydirectory/mysubdirectory/mapp": Permission denied` but it will function as expected.


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


### Errors you may encounter and their solutions
```
Could not find pg-1.5.4, puma-5.6.8, bootsnap-1.18.1, debug-1.9.1, nio4r-2.7.0, msgpack-1.7.2, bindex-0.8.1, websocket-driver-0.7.6, io-console-0.7.2, racc-1.7.3, date-3.3.4, psych-5.1.2, stringio-3.1.0 in locally installed gems
```
This means you need to run `rvm use 3.1.2` (or whatever your Ruby version is when you're reading this)

```
pkgx +ruby-lang.org=3.1.2 rails c
× nothing provides: rails
│ we haven’t pkgd this yet. can you?
╰─➤ https://docs.pkgx.sh/pantry
```
Just as `pkgx` says, they don't support Rails yet. Instead, I use `rvm` as a package manager. Once you've used that to set yourself to the correct ruby version (`rvm use 3.1.2`), you should be able to run `rails s` and other commands from that library without any prefix command.

ActiveRecord error: Port 5432 is not available
Postgres isn't running. See "Database initialization".

TablePlus: Authentication error despite correct password
It is attempting to log in with your default `psql` account, which may or may not be the one you've actually entered into the user/password fields (they ignore them, actually, apparently). It's also possible that because (if) Postgres is running already, it gets confused and won't create a second instance. `Windows`+`R`, `services.msc` and submit, find the "Postgres" listing and choose the "stop" task if it isn't disabled.
