# jekyll-post-unslugify
![](https://img.shields.io/gem/dt/jekyll-post-unslugify.svg) ![](https://img.shields.io/gem/v/jekyll-post-unslugify.svg)

A plugin to keep post title unslugified in Jekyll 3.0 and above. 

Since Jekyll starts to slugify title of posts, any character except numbers and letters will be replaced as `-`. If you name your posts as `Cased-Title.md` or `underscore_hyphen.md` or any string containing special characters, the link of related post will change after you upgrade Jekyll from 2.x to 3. This plugin aims to help you out.

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll-post-unslugify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-post-unslugify
    
Then update the `_config.yml` of your jekyll project

    #jekyll plugin section
    gems:
      - jekyll-post-unslugify
    permalink: '/:categories/:year/:month/:day/:unslugified_title/'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
