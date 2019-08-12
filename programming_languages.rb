
require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      type_hash.each do |key, value|
        # binding.pry
        if !new_hash[language]
          new_hash[language] = {}
        end
        if !new_hash[language][key]
          new_hash[language][key] = value
        end
        # new_hash[language][:style] = []
        if !new_hash[language][:style]
          new_hash[language][:style] = []
          new_hash[language][:style] << style
        else
          new_hash[language][:style] << style
        end
      end
    end
  end
  new_hash
end
