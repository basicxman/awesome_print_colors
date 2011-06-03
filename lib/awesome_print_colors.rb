module AwesomePrintColors
  VERSION = "0.0.1"

  class << self
    attr_accessor :themes
  end

  self.themes = {
    :test => {
      :array      => :white,
      :bigdecimal => :blue,
      :class      => :yellow,
      :date       => :greenish,
      :falseclass => :red,
      :fixnum     => :blue,
      :float      => :blue,
      :hash       => :pale,
      :struct     => :pale,
      :nilclass   => :red,
      :string     => :blue,
      :symbol     => :cyanish,
      :time       => :greenish,
      :trueclass  => :green,
      :method     => :purpleish,
      :args       => :pale,
      :keyword    => :cyan,
      :variable   => :cyanish
    }
  }
end

require 'awesome_print_colors/awesome_print'
