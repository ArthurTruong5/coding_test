# Coding Challenge

Thank you for the opportunity to submit this challenge. It was very enjoyable.

View live @ [Live Site](https://sentia-coding-test.herokuapp.com)

# Test

Create a Import CSV uploader that outputs HTML using PostgreSQL as the database. Sort the name, date and columns without reloading. Add a search bar that doesn't reload when searched.

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
