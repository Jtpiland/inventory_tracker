<!-- PROJECT INFO -->
<h1 align="center">
  Inventory Tracker
</h1>

<h4 align="center">Web application built to track your inventory!</h4>

<p align="center">
  <a href="https://github.com/Jtpiland/is_it_sweater_time/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/Jtpiland/inventory_tracker?style=for-the-badge" alt="contributors_badge">
  </a>
  <a href="https://github.com/Jtpiland/is_it_sweater_time/network/members">
    <img src="https://img.shields.io/github/forks/Jtpiland/inventory_tracker?style=for-the-badge" alt="forks_badge">
  </a>
</p>

<!-- CONTENTS -->
<p align="center">
  <a href="#about-the-project">About The Project</a> •
  <a href="#requirements">Requirements</a> •
  <a href="#tools-used">Tools Used</a> •
  <a href="#set-up">Set Up</a> •
  <a href="#installation">Installation</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#acknowledgements">Acknowledgements</a>
</p>

## About The Project

Build an inventory tracking web application for a logistics company. We are looking for a web application that meets the requirements listed below, along with one additional feature, with the requirements also listed below. 

## Requirements

Basic CRUD Functionality. You should be able to:
-   Create inventory items
-   Edit Them
-   Delete Them
-   View a list of them
-   Ability to create warehouses/locations and assign inventory to specific locations

## Tools Used

| Development |  Testing  |      Gems       |
| :---------: | :-------: | :-------------: |
| Ruby 2.7.2  |   RSpec   |       Pry       |
| Rails 6.1.6 |           | ShouldaMatchers |
|   VS Code   |           |     Capybara    |
|   Github    |           |     Launchy     |
|             |           |Factory Bot Rails|
|             |           |      Faker      |
|             |           |Factory Bot Rails|

## Set Up

1. To clone and run this application, you'll need Ruby 2.7.2 and Rails 2.5.3. Using [rbenv](https://github.com/rbenv/rbenv) you can install Ruby 2.7.2 (if you don't have it already) with:

```sh
rbenv install 2.7.2
```

2. With rbenv you can set up your Ruby version for a directory and all subdirectories within it. Change into a directory that will eventually contain this repo and then run:

```sh
rbenv local 2.7.2
```

You can check that your Ruby version is correct with `ruby -v`

3. Once you have verified your Ruby version is 2.7.2, check if you have Rails. From the command line:

```sh
rails -v
```

4. If you get a message saying rails is not installed or you do not have version 5.2.5, run

```sh
gem install rails --version 6.1.6
```

5. You may need to quit and restart your terminal session to see these changes show up

## Installation

1. Fork this repo
2. Clone your new repo
   ```sh
   git clone https://github.com/#{your_github_username}/is_it_sweater_time.git
   ```
3. Install gems
   ```sh
   bundle install
   ```
4. Setup the database
   ```sh
   rails db:create
   rails db:migrate
   ```
5. Start local server 
  ```sh
   rails s
   ```
6. Track your inventory!

## How To Use

Inventory Tracker can be used to create, update, view and destroy Inventory Items. To create an Inventory Item, an Item, Warehouse and quantity are required. 

## Contributing

👤 **Jacob Piland**

- [GitHub](https://github.com/jtpiland)
- [LinkedIn](https://www.linkedin.com/in/jacob-piland/)

## Acknowledgements

- [Shopify](https://www.shopify.com)
