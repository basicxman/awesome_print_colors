module AwesomePrint
  
  class Inspector
    
    def merge_options!(options)
      themes = options[:theme]
      themes = [themes] unless themes.is_a? Array

      themes.each do |theme|
        if AwesomePrintColors.themes.include? theme
          colors = AwesomePrintColors.themes[theme]
          @options[:color].merge! colors
        end
      end

      merge_options_without_themes! options
    end

  end

end
