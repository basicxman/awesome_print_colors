module AwesomePrint
  
  class Inspector
    
    def merge_options!(options)
      theme = options[:theme]
      if AwesomePrintColors.themes.include? theme
        colors = AwesomePrintColors.themes[theme]
        @options[:color].merge! colors
      end

      merge_options_without_themes! options
    end

  end

end
