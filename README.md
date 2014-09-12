Spree Reffiliate
================

[![Build Status](https://travis-ci.org/kinduff/spree_reffiliate.svg?branch=master)](https://travis-ci.org/kinduff/spree_reffiliate)

Spree Reffiliate is a [Spree] Extension that adds the referral and affiliate features to your Spree Store. Users are going to be able to share a unique hyperlink with their friends to gain benefits and you'll be able to create affiliate campaigns through the Spree Administrator and configure it to your needs.

### Referrals
+ User can share a unique URL
+ User can signup as a referred user
+ Referred user can have promotions
+ Admin is able to see referred users and orders from user

### Affiliates
+ Admin is able to create an affiliate with a custom path
+ Customize the affiliate view with a partial
+ Users are going to be able to signup as an affiliated user
+ Affiliated user can have individual promotions
+ Admin is able to see affiliated users and orders from affiliate

![Spree Reffiliate](https://cloud.githubusercontent.com/assets/1270156/4210980/11c6ba84-387f-11e4-8f3d-4eb7f45f9004.png)

## Installation

Add spree_reffiliate to your Gemfile:

```ruby
gem 'spree_reffiliate', github: 'kinduff/spree_reffiliate'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_reffiliate:install
```

### Existing Users
If you already have users within your database, you'll need to run the following command to generate the referral registry for your users:

```shell
bundle exec rake reffiliate:generate
```

## Usage

Referral path is `/r/:code` and Affiliate path (assigned in the admin) is `/a/:path`

Once installed, you'll be able to access the following methods.

#### Spree::User
+ referred_by => user record
+ referral_count => user count
+ referred? => boolean
+ affiliate? => boolean
+ affiliate => affiliate record
+ referral => referral record

#### Spree::Referral
+ code => referral code
+ referred_users => array of users
+ referred_orders => array of orders
+ referred_count => user count

#### Spree::Affiliates
+ referred_users => array of users
+ referred_orders => array of orders
+ referred_count => user count

### Spree Admin

#### Users
![User Listing](https://cloud.githubusercontent.com/assets/1270156/4210981/11cd353a-387f-11e4-826d-07b272bb249a.png)

#### Affiliates
![Referral Listing](https://cloud.githubusercontent.com/assets/1270156/4210982/11e9966c-387f-11e4-9a27-fca70c7a706d.png)

#### Promotion Rules
For referrals:
![Referral Rules](https://cloud.githubusercontent.com/assets/1270156/4244240/ec3dac8c-3a1d-11e4-8c6d-42c9f9b31e5f.png)

For affiliates:
![Affiliate Rules](https://cloud.githubusercontent.com/assets/1270156/4244241/ec3e156e-3a1d-11e4-972a-5d61ebf0f053.png)

### User account
![User account](https://cloud.githubusercontent.com/assets/1270156/4210983/11e9b9a8-387f-11e4-8733-182bdebc449c.png)

## Testing

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_reffiliate/factories'
```

## ToDo
+ Add missing documentation
+ Add 2-2-stable and 2-1-stable support (or at least test them)
+ Improve affiliates admin
+ Improve User and Orders listing at user admin
+ Add option or helper to show referral code to the user

Copyright (c) 2014 Alejandro AR, released under the New BSD License

[Spree]: http://spreecommerce.com/
