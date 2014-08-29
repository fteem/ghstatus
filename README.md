# Gst

Easily get Github's Status as Ruby objects or use the command line tool.

## Motivation

I used to get these very often:

```
➜  repo-name git:(master) git push origin master
fatal: 'origin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

And often I didn't know if it's my internet connection's fault, or GitHub's APIs had problems. 
And I am too lazy to open the browser and check status.github.com

## Installation

Add this line to your application's Gemfile:

    gem 'gst'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gst

## Usage

### In Ruby

To get the current Github Status:
```ruby
GST::Status.current 
```

To get the last Github Status message:
```ruby
GST::Message.last
```

To get most recent Github Status messages:
```ruby
GST::Message.recent
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/gst/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
