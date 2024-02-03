# TransactionManagement
This is an implementation of a simple Plugin for recording financial Transactions and viewing Transaction History.

## Set up
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'transaction_management', path: 'components/transaction_management'
```

And then execute:
```bash
$ bundle
```

Mount it to your application:

Add this line in your `routes.rb` file
```rb
mount TransactionManagement::Engine => "/components/transaction_management"
```
Run your migrations:
```bash
$ rails db:migrate
```

## Architecture

Component Based Architecture [https://edgeguides.rubyonrails.org/engines.html]

## How It works

Create A transaction

```bash
curl --location 'url/components/transaction_management/transactions' \
--header 'Content-Type: application/json' \
--data '{
    "transaction": {
        "amount": "100",
        "account_id": "account_id"
    }
}'
```

Show transaction

```bash
curl --location 'url/components/transaction_management/transactions/:id'
```

List All Transactions

```bash
curl --location 'url/components/transaction_management/transactions'
```

Show Account
```bash
curl --location 'url/components/transaction_management/accounts/:id'
```

## Testing
A unit test for the Transaction Model.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
