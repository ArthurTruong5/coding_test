# Coding Challenge

I added continuous integration, unit & application testing.

View live @ [Live Site](https://sentia-coding-test.herokuapp.com)

# Test

The Sentia coding test requires you to create a Ruby on Rails application with a few features listed
below. A CSV will be provided.
The task is;
Part 1

1.  Create a Ruby on Rails application.
2.  With the provided CSV file, you will need to create a form that can upload the file and import
    the data into a database. (Prefer Postgresql)
3.  Once the data has been imported, you will need to display the imported data in a HTML table.
    Part 2
4.  Once Part 1 is completed, you will need to add the ability to order the Name, Date and Number
    columns by ascending/descending when clicking on the column headers. This should be
    achieved without reloading the page.
5.  Add a search field so that you can also filter the table results by Name. This should also be
    done without reloading the page.

Sentia coding CSV file - https://drive.google.com/file/d/0B0zzNl8wYyy1dkg4NnJubEItT1JqcC1QVkNRMVczZFZIQ1Nj/view?usp=sharing

# Setup

```bash
bundle install
```

```bash
rake db:create
```

```bash
rake db:migrate
```

# Run Testing

```bash
bundle exec rake spec
```

# Features of submission

- Mobile responsiveness
- CSV validations
- Dynamic sorting without reloading
- Unit testing with Rspec, Factory_Rails and Capybara

# Coding Decisions

- Use Capybara to test CSV has been properly configured.
- Use continious integration through Travis CI
- Use Bulma as the CSS framework
- Insensitive search bar

# Challenges

Figuring out how to add testing for CSV import.
