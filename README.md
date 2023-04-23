<h1 align="center">Eli Fuchsman's Take Home Challenge</h1>

<br />
<div align="center">
  <a href="https://github.com/efuchsman/bitly">
    <img src="https://media.tenor.com/l9pYJaNO0xUAAAAC/the-internet-baboon.gif">
  </a>

  <h3 align="center">
    Get the number of clicks for a specified year!
    <br />
  </h3>
</div>

# Table of Contents
* [App Description](#app-description)
* [System Requirements](#system-requirements)
* [Technologies Used](#technologies-used)
* [Setup](#setup)
* [Respository](#repository)
* [Endpoints](#endpoints)

# App Description
 This app allows users to retrieve the number of clicks for a long url based off a given year.

# System Requirements
* Ruby 2.7.4
* Rails 5.2.8
* Docker Desktop 

# Technologies Used 

![Ruby on Rails](	https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=ffffff&color=CC0000)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-008bb9?style=for-the-badge&logo=PostgreSQL&logoColor=ffffff&color=008bb9)
![Docker](https://img.shields.io/badge/Docker-ffffff?style=for-the-badge&logo=docker&logoColor=ffffff&color=0db7ed)
![Git](https://img.shields.io/badge/Github_Actions-100?style=for-the-badge&logo=GitHub&logoColor=ffffff&color=141422)

## Setup for Ruby on Rails

1. Fork and Clone the repository
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:{drop,create,migrate}`
4. Seed CSV data: `rails csv_load:urls`
5. Seed JSON data: `rails json_load:decodes`
11. All 13 tests should be passing with 100% coverage: `bundle exec rspec`
12. Run the server `rails s`

# Repository

https://github.com/efuchsman/bitly
