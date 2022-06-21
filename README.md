![example workflow](https://github.com/MatthewSerre/mkt-api/actions/workflows/rubyonrails.yml/badge.svg)

# Mario Kart Tour API

[Mario Kart Tour API](https://mario-kart-tour-api.herokuapp.com) aims to be a robust resource for developers to leverage when creating applications or websites related to the popular Mario Kart Tour mobile game.  This project is a work in progress, so feel free to suggest or make improvements and please [contact me](https://matthewserre.com) if you would be willing to help with gathering/inputting data to seed the database!

## Getting Started

* Clone the repository
* Run `bundle` to install the dependencies
* Run `rails db:setup` to create and populate the database
* Run `rails s` to start the local development server
* Visit `https://localhost:3000` to view the home page and confirm you can invoke the test API endpoint

## Live Data

All data from calls to the API is returned from models using ActiveRecord methods that connect to the underlying PostgreSQL database, but the database is currently populated/updated manually using the methods in `seeds.rb`, which export the newest versions of the source CSVs from Google Sheets and iterate through the records to create or update them.  The spreadsheets can be viewed publicly:

* [Drivers](https://docs.google.com/spreadsheets/d/119nCCqTbCrIUqOpSi2ebaYZn-EEKE1U-o-vL3-hUdSw/edit?usp=sharing)
* [Karts](https://docs.google.com/spreadsheets/d/1TiEbTz4aHk7ahWUbFev4NqQac5gejWqRnpmz4SeX2o0/edit?usp=sharing)
* [Gliders](https://docs.google.com/spreadsheets/d/1DzXFt7fVNlCXrLQVPvzuWyiE6txjUxwMu6M-3-Eq6o0/edit?usp=sharing)
* [Courses](https://docs.google.com/spreadsheets/d/1y1tDOEwW2iMzZgpxJ-oOnX-RS8f9wrlEX2bBMElaDGk/edit?usp=sharing)
