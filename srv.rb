# encoding: utf-8
require 'sinatra'
require './ical'

get '/' do
    "hello eth"
end

post '/ingestion' do
    puts params
end

get '/feed/:boop' do
    # boop is just a random token we can change to bust caching
    content_type 'text/calendar'
    cache_control :no_cache, :no_store, :must_revalidate, :max_age => 0
    headers "pragma" => "no-cache"
    merged_feed
end