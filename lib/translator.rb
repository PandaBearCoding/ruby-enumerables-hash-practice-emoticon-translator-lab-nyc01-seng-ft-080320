# require modules here

require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
    end
  new_hash 
end	end



def get_japanese_emoticon
  result = "Sorry, that emoticon was not found"
  data = load_library(file)
  data.each do |emoti_name , emoti_trans|
    if emoti_trans[:english] == western_emoticon
      result = emoti_trans[:japanese]
    end
  end
  result 
end



def get_english_meaning
result = "Sorry, that emoticon was not found"
  data = load_library(file)
  data.each do |emoti_name , emoti_trans|
    if emoti_trans[:japanese] == japanese_emoticon
      result = emoti_name
    end
  end
  result
end