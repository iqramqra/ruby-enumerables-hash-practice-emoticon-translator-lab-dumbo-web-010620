# require modules here
require "yaml"

def load_library(emoticons)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  hash={:get_meaning =>{}, :get_emoticon =>{}}
  emoticons.each do |meaning, translation|
    english=translation[0]
    japanese=translation[1]
    hash[:get_meaning][japanese]=meaning
    hash[:get_emoticon][english]=japanese
  end
  return hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library=load_library(file_path)
  # return emo_result["get_emoticon"][eng_emote]
  return library[:get_emoticon][]
 #library[:get_emoticon].each do |key, value|
    if key==emoticon
      puts value
    end
  end
end

def get_english_meaning
  # code goes here
end