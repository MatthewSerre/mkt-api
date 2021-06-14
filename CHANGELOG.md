# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## 2021-06-13

- Modified course and driver connections to allow full course objects to be returned with each driver and full driver objects to be returned with each course in a way that is performant

## 2021-05-22

- Modified courses and drivers to return string arrays of favorite and favored drivers and courses, respectively, instead of the driver and course objects to increase performance (you can now split the string arrays and use those values to invoke the drivers/name or courses/name endpoint as needed)
- Configured app to seed from Google Sheets files
- Added support for karts and gliders

## 2021-05-21

- Added Auth0 authorization for API endpoints (please contact me for API keys if you want them)

## 2021-05-19

- Released initial API
- Added updated data for drivers, courses, and top-shelf courses/drivers