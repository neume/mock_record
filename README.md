# MockRecord

It is a minimal base class that acts like an ActiveRecord without a matching database table. It has basic methods to support polymorphic association. Nothing special here :)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mock_record'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mock_record

## Usage

Inherit the ```MockRecord::Base``` class
```ruby
class Square < MockRecord::Base
end
```
Assuming you have a polymorhic association
```ruby
class Poly < ApplicationRecord
  belongs_to :subject, polymorphic: true
end
```
then you can now use our ```Square``` as a the subject of ```Poly```
```ruby
Poly.create(subject: Square.new)
```
This will create a Poly with ```subject_id``` of ```0``` and ```subject_type``` of ```Square```

It is the same as
```ruby
Poly.create(subject_id: 0, subject_type: "Square")
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/neume/mock_record. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
