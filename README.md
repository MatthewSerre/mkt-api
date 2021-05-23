# Mario Kart Tour API

[Mario Kart Tour API](https://mario-kart-tour-api.herokuapp.com) aims to be a robust resource for developers to leverage when creating applications or websites related to the popular Mario Kart Tour mobile game.  This project is a work in progress, so feel free to suggest or make improvements and please [contact me](https://matthewserre.com) if you would be willing to help with gathering/inputting data to seed the database!

## Getting Started

Clone the repo and run `bundle` in the directory. Then run `rails s` to start it locally. Comment the lines in `/db/seeds.rb` that initiate a session with Google Drive and export the CSV files. You can use the existing ones in the repo to seed the database.  Comment `include Secured` and related lines at the tops of the controller files to perform test calls locally without encountering unauthorized errors. Feel free to contribute by creating an issue and/or branch/pull request.

## Live Data

All data from calls to the API is returned from models using ActiveRecord methods that connect to the underlying PostgreSQL database, but the database is currently populated/updated manually using the methods in `seeds.rb`, which export the newest versions of the source CSVs from Google Sheets and iterate through the records to create or update them.  The spreadsheets can be viewed publicly:

* [Drivers](https://docs.google.com/spreadsheets/d/119nCCqTbCrIUqOpSi2ebaYZn-EEKE1U-o-vL3-hUdSw/edit?usp=sharing) - mostly up to date as of 2021-05-23
* [Karts](https://docs.google.com/spreadsheets/d/1TiEbTz4aHk7ahWUbFev4NqQac5gejWqRnpmz4SeX2o0/edit?usp=sharing)
* [Gliders](https://docs.google.com/spreadsheets/d/1DzXFt7fVNlCXrLQVPvzuWyiE6txjUxwMu6M-3-Eq6o0/edit?usp=sharing)
* [Courses](https://docs.google.com/spreadsheets/d/1y1tDOEwW2iMzZgpxJ-oOnX-RS8f9wrlEX2bBMElaDGk/edit?usp=sharing)

## To Do

- Add data ~~/endpoints~~ for karts, gliders ~~, and courses~~
- Host images of/add image links for the drivers, driver emblems, karts, gliders, and courses (need to identify the best place to source the files to avoid any infringement)
- Implement error handling/messages
- Add throttling ~~/API key system~~ if necessary
- ~~Add Daily Select data to drivers (and possibly All Clear Pipe attribute if items are never removed from it)~~
