# require modules here

def load_library
  # code goes here
end

def get_japanese_emoticon
  # code goes here
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