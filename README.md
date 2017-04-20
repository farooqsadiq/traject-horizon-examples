# Simple project to test  horizon_traject

JHU uses the horizon_traject gem. 
This is a simple project that shows an example of its use.

## Requirements

- JRuby   : is required by traject_horizon
- bundler : to build the project 
- dotenv  : mannage th environments

## Setup

env-example is provided which you need to cp and update
```
cp env-example .env
```

Build the project using bundler
```
bundle install --path=vendor/bundle
```

## Usage

Retrieve a single record and output to march
```
bundle exec traject -x marcout -c config/horizon.rb -o marc_files.marc -s horizon.first_bib=10000 -s horizon.last_bib=10000
```

