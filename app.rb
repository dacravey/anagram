require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')

get('/form') do
  erb(:form)
end

get('/results') do
  base_word = params.fetch('base_word')
  word_list = params.fetch('word_list')
  word_list_array = word_list.split()
  results_array = word_list_array.anagram(base_word)

  results_html = "<ul>"
  results_array.each() do |current_result|
    results_html.concat("<li>")
    results_html << current_result
  end
  results_html.concat("</ul>")

  @base_word = base_word
  @results = results_html

  erb(:results)
end
