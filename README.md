# MongoTaggable
Extensions for gem https://github.com/mepatterson/acts_as_mongo_taggable with rails 4 and ruby 2.1.1

Inspired by mbleigh's "acts_as_taggable_on," this tagging plugin works with MongoDB+MongoMapper.

Intends to be super-performant by taking advantage of the benefits of document-driven db denormalization.

## Requirements
  MongoDB
  MongoMapper gem
  Expects you to have a User model that includes MongoMapper::Document

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongo_taggable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongo_taggable

## Usage

class User
  include MongoMapper::Document
end

class Widget
  include MongoMapper::Document
  include MongoTaggable
end
To rate it:

widget.tag(word_or_words, user)
word_or_words can be a string, a string of comma-delimited words, or an array
user is the User who is tagging this widget
Basic search:

Widget.find_with_tag('vampires')
... will return the first Widget object that has been tagged with that phrase

Widget.find_all_with_tag('vampires')
... will return an array of Widget objects, all of which have been tagged with that phrase

Widget.most_tagged_with('vampires')
... will return the Widget object that has been tagged the most times with that phrase

Making tag clouds:

Widget.all_tags_with_counts
... will return a nice array of arrays, a la [["rails", 8],["ruby", 12], ["php", 6], ["java", 2]] Use this to make yourself a tag cloud for now. (maybe I'll implement a tag cloud view helper someday.)

Statistics on Tags:

Tag.top_25
... returns the top 25 most used tags across all taggable object classes in the system

Tag.top_25("Widget")
... returns the top 25 most used tags for Widget objects

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mongo_taggable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
