require("sinatra")
require("sinatra/reloader")
require("./lib/anagrams")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get("/anagrams") do
  @anagrams = params.fetch("master_word").anagrams(params.fetch("words_to_compare"))
  erb(:anagrams)
end
