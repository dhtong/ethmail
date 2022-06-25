# encoding: utf-8
require 'sinatra'

get '/' do
    "hello eth"
end

post '/ingestion' do
    puts params
end
