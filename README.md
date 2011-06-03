Awesome Print Colours
---------------------

### Overview

Awesome Print Colors is a library for Michael Dvorkin's Awesome Print
(http://github.com/michaeldv/awesome_print) which adds support for theming.
Other developers are strongly encouraged to fork and add themes, pull 
requests shall be accepted quickly!

Note, Awesome Print Colors only works with version of Awesome Print greater
than 0.4.0, currently waiting on a pull request to be merged.

### Installation

    # Installing as a Ruby Gem (awesome_print will be installed with it)
    $ gem install awesome_print_colors

    # Cloning from GitHub (p.s. fork it!)
    $ git clone git://github.com/basicxman/awesome_print_colors.git

### Usage

Simply pass ```Kernel#ap``` or ```Kernel#ai``` the :theme option to select a theme. Themes
can be viewed here, 
https://github.com/basicxman/awesome_print_colors/blob/master/lib/awesome_print_colors.rb

Since awesome print has both default colours and a :color option, there is a
precedence.

    # Default <- Theming <- Options

    require 'ap'
    require 'apc'
    ap "Test", :theme => :test
    ap "Test", :theme => :test, :color => { :float => :red }

### Available Themes

    # :test
    # :default (default awesome_print theme included here)
    # :solarized (based off Ethan Schoonover's Solarized, http://ethanschoonover.com/solarized)
