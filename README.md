Rails Stripe, Linkedin
4/26/2020, Sat

https://subscription.packtpub.com/video/web_development/9781800201521

https://www.linkedin.com/learning/ruby-on-rails-5-essential-training/render-a-template

#user
1. halvong@yahoo.com:123456
2. halvong5@gmail.com:123456
3. dcarroll@hotmail.com:123456
3. peter@hotmail.com:123456

#urls
http://localhost:3000/products/new

#Notes
Look for stripeToken, authenticity_token

#you should see this
hidden tags
    scrf-token
    stripe-public-key


#Rails
1. docker run -i -t --rm -v ${PWD}:/usr/src/app ruby:2.6.3 bash
   gem install rails
   rails new myapp -d postgresql --no-ri --no-rdoc
   exit
2. docker build -t docker_rails .

3. Gemfile, pg75 
	gem 'pg', '~> 1.0'
    
4. docker-compose run --rm database psql -U postgres -h database
   docker-compose rm -f database
   docker-compose up -d database
   docker-compose up -d --force-recreate web
   docker-compose up -d --force-recreate database
   
5. docker volume [ls rm]
6. docker-compose exec web rails g scaffold Product name description:text secret:text
6b. gem 'devise', '~> 4.2'
    gem 'bcrypt'
    gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
    gem 'stripe', '~> 4.21', '>= 4.21.2'
    
7. docker-compose exec web rails db:migrate
8. docker-compose exec web rails g devise:install -- 2.2 
   docker-compose exec web rails g devise:views   -- 2.2 
9. docker-compose exec web rails g devise User stripe_id stripe_subscription_id card_brand card_last4 card_exp_month card_exp_year expires_at:datetime 
   docker-compose exec web rails db:migrate
10. getbootstrap.com

11. app/assets/javascripts/application.js
        //= require jquery
        //= require jquery_ujs

11. docker-compose run web bash
        EDITOR="vi" bin/rails credentials:edit
        
        See LastPass 
    
12. app/views/layouts/application.html.erb L10  
        <%= javascript_include_tag 'application', 'https://js.stripe.com/v2/', 'data-turbolinks-track': 'reload' %>
        <%= tag :meta, name: "stripe-public-key", content: Rails.application.credentials.stripe_public_key %>
13. create config/initializers/stripe.rb
        Stripe.api_key = Rails.application.credentials.stripe_private_key
14. docker-compose exec rails c
        Stripe::Customer.all        
        
15. docker-compose exec web rails db:migrate VERSION=0
16. docker-compose exec web rails db:migrate:status
     
    
---Steps by Steps
docker-compose exec web rails g controller demo index #demo controller w/ index view


