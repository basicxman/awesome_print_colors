module AwesomePrintColors
  VERSION = "0.0.1"

  class << self
    attr_accessor :themes
  end

  def self.test_theme(theme)
    test = {
      :some_array => [
        0.class,
        nil,
        true,
        false
      ],
      :n => [
        0,
        1,
        2,
        12345678901234567890,
        3.14,
        3.1415926535897932384626433832795028841
      ],
      :dates => [
        Time.now,
        Time.now.to_s
      ]
    }

    ap test, :theme => theme
  end

  self.themes = {
    :test => {
      :string     => :blue,
    },
    :default => {
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
      :string     => :yellowish,
      :symbol     => :cyanish,
      :time       => :greenish,
      :trueclass  => :green,
      :method     => :purpleish,
      :args       => :pale,
      :keyword    => :cyan,
      :variable   => :cyanish
    },
    :solarized => {
      :array      => 33,
      :bigdecimal => 37,
      :class      => 136,
      :date       => 125,
      :falseclass => 33,
      :fixnum     => 33,
      :float      => 33,
      :hash       => 33,
      :struct     => 136,
      :nilclass   => 64,
      :string     => 37,
      :symbol     => 160,
      :time       => 125,
      :trueclass  => 33,
      :method     => 33,
      :args       => 37,
      :keyword    => 37,
      :variable   => 33
    },
    :sim => {
      :array      => 55,
      :bigdecimal => 57,
      :class      => 136,
      :date       => 125,
      :falseclass => 161,
      :fixnum     => 33,
      :float      => 33,
      :hash       => 33,
      :struct     => 136,
      :nilclass   => 160,
      :string     => 37,
      :symbol     => 161,
      :time       => 125,
      :trueclass  => 130,
      :method     => 33,
      :args       => 37,
      :keyword    => 37,
      :variable   => 33
    }
  }
end

require 'awesome_print_colors/awesome_print'
