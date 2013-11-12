get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/tweet' do 

  begin
    Twitter.update(params[:tweet])
  rescue
    "Error.  No tweets for you. :("    
  else
    "Tweet submitted!"
  end

end
