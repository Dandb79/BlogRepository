# base-ruby
This is the base of a blogging website written in Ruby (and Rails)

## Setting Up Locally

Our end goal is to have our very own blog website that we can write posts on. The first step to having a website running on the Internet is to get one running on your local machine. No one will be able to access it, but at least you'll know it works.

To get the Ruby based blog up and running locally we'll first need to grab a copy of the base code from Github. Here's [a link](https://github.com/CodeGuild-co/base-ruby/archive/master.zip). Download this zip file and unzip it onto the Desktop.

The unzipped folder is called `base-ruby-master` that's not particularly descriptive, change it to something nicer. I called mine `blog`.

We now have the code but we can't run it because we haven't installed the software dependencies. Let's do that. Open a `Konsole` window and type the following commands (don't type the `$` symbol, that's to show you that we're looking at a `Konsole` command line):

    $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    $ \curl -L https://get.rvm.io | bash -s stable
    $ source ~/.rvm/scripts/rvm
    $ rvm requirements
    $ rvm install ruby
    $ rvm use ruby --default
    $ rvm rubygems current
    $ gem install rails

That's installed Ruby and Ruby on Rails for us, now we need to get the Ruby libraries that our website needs to run:

    $ cd Desktop/blog
    $ bundle install

We're done! Let's run the code:

    $ rails server --binding 0.0.0.0

You should now be able to open up a browser and visit http://localhost:3000 to see your blog. When you make changes to the files, refresh the page to see the website change.

## Saving Your Work

Once you've made some changes you'll want to save them. As well as saving them to your USB stick, you should save your projects in "the cloud". More accurately, you should save your code in a version control system. For this project we'll use `git`, and GitHub.

First, download `git`:

    $ sudo apt-get install git

Then set up `git` to use your name and email address:

    $ git config --global user.name "YOUR NAME"
    $ git config --global user.email "YOUR EMAIL ADDRESS"

Now visit [GitHub](https://github.com) and create an account (it's free).

In GitHub create a new repository by clicking the plus symbol in top-right of the page. Don't check the "Initialize this repository with a README" checkbox.

Let's save our local code to this new GitHub repository:

    $ git init
    $ git add .
    $ git commit -m "First commit"
    $ git remote add origin https://github.com/USERNAME/REPO.git
    $ git push -u origin master

You'll have to change `USERNAME` and `REPO` to match your username and repository name.

You're all done!

Anytime you want to save future changes you'll only need to run:

    $ git add .
    $ git commit -m "MESSAGE DESCRIBING YOUR CHANGES"
    $ git push origin master

## Getting Online

To get this base blog online you'll need to:

1. Get Billy to give you your own copy of this repo
    - You probably already have this
    - You'll have picked a unique domain name too
2. Signup to [Heroku](heroku.com)
3. Create an app on Heroku
    - Use the European region when asked
4. Connect your Heroku account to your Github account
5. Connect your Heroku app to your Github repo
6. Enable automatic deploys
7. Make a change to your repo (using the Github editor)
8. Visit your Heroku app's settings and add a custom domain
    - add your personal CodeGuild domain
    - e.g. `wm.codeguild.co`
8. Visit your domain and see your blog!


## Adding Posts

1. Create a file for your new post in `app/views/posts`
2. Add a new endpoint to the posts controller in `app/controllers/posts_controller.rb`
3. Add a route to your new endpoint in `config/routes.rb`

It's easy, but boring. You should try using Ruby (and Rails) to automate these steps (be lazy!).
