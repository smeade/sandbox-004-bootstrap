## Readme

A Rails application to play with Bootstrap.

Demonstrates:

* Bootstrap via the bootstrap-generators gem
* Rails scaffold
* root route
* heroku deploy readiness via rails_12factor gem

Heroku app [here](http://sandbox-004-bootstrap.herokuapp.com/)

## Notes

### Bootstrap
* one-time run of "rails generate bootstrap:install -f"
  * updated layouts/application.html.erb
  * created templates in lib/templates
  * created stylesheets
* config.generators block required in application.rb
* remove Rails's scaffolds.css.scss stylesheet
* see https://github.com/decioferreira/bootstrap-generators

### Heroku
* The [rails_12factor gem](https://github.com/heroku/rails_12factor) is required.

  See https://devcenter.heroku.com/articles/getting-started-with-rails4#heroku-gems.

* Use Postgres locally to maintain parity between local development and the deployed app.

## Getting Started

1. Install gems:

        bundle install

2. Create the database:

        rake db:create

2. Migrate the database:

        rake db:migrate

4. Start the web server:

        rails server

5. Using a browser, go to `http://localhost:3000` and you'll see:
"Listing products"

## Running the test suite

        rake

## Deploying to Heroku

1. Install the [Heroku toolbelt](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup) on local workstation (if not already installed).

2. Create the [Heroku app](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku) (if not already created).

        heroku apps:create

    or

        heroku apps:create any-app-name-here

3. Create the [Heroku remote](https://devcenter.heroku.com/articles/git#creating-a-heroku-remote) (if not already created by step 2).

        heroku git:remote -a sandbox-003-12factor -r heroku

4. [Deploy](https://devcenter.heroku.com/articles/git#deploying-code)

        git push heroku master

    or

        git push heroku yourbranch:master

5. Run migrations (if needed)

        heroku run rake db:migrate

6. Visit the deployed app

        heroku open

## Multi-environment deploys

Note you can name the remote anything. You might do so in support of multi-environment deploys. For example:

        heroku apps:create sandbox-003-12factor-staging
        heroku git:remote -a sandbox-003-12factor-staging -r staging
        git checkout -b staging
        git push staging staging:master
        heroku run rake db:migrate -a sandbox-003-12factor-staging
        heroku open -a sandbox-003-12factor-staging

## TBD

* System dependencies

* Configuration

* Services (job queues, cache servers, search engines, etc.)

* ...

## License

This project is released under the [MIT License](http://www.opensource.org/licenses/MIT).