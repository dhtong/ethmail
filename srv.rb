# encoding: utf-8
require 'sinatra'
require './ical'

get '/' do
    "hello eth"
end

post '/ingestion' do
    puts params
    if params['attachment-1']['type'] == 'text/calendar'
        read_ics_file(params['attachment-1']['tempfile'])
    end
end

get '/feed/:boop' do
    # boop is just a random token we can change to bust caching
    merged_feed
end