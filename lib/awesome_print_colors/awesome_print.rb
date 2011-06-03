module AwesomePrint
  
  class Inspector
    
    def merge_options!(options)
      merge_options_without_themes!
      
      theme = options[:theme]
      unless AwesomePrintColors.themes.include? theme
        return false
      end

      colors = AwesomePrintColors.themes[theme]
      @options[:color].merge! colors
    end

  end

end
