require 'Twitter'
require 'dotenv/load' 

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["API_KEY"]
  config.consumer_secret     = ENV["API_SECRET_KEY"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
end


quotes_bank = [
    "Positive anything is better than negative nothing. - Elbert Hubbard",
    "Miracles happen to those who believe in them. - Bernhard Berenson",
    "One small positive thought can change your whole day. - Zig Ziglar ",
    "Believe you can and you’re halfway there. - Teddy Roosevelt",
    "You cannot have a positive life and a negative mind. - Joyce Meyer",
    "If you are positive, you’ll see opportunities instead of 
    obstacles. - Widad Akrawi ",
    "Write it on your heart that every day is the best day 
    in the year. - Ralph Waldo Emerson",
    "Accentuate the positive, Eliminate the Negative, latch onto the affirmative. - Bing Crosby",
    "I will go anywhere as long as it’s forward. - David Livingston",
    "My dear friend, clear your mind of can’t. - Samuel Johnson",
    "Keep a smile on your face. Keep a spring in your step. - Joel Osteen",
    "A positive atmosphere nurtures a positive attitude,
     which is required to take positive action. - Richard M. DeVos",
    "Turn every life situation into a positive one. - Rhonda Byrne",
    "Believe that life is worth living and your belief will help create the fact.
    - William James",
    "The most positive men are the most credulous - Alexander Pope",
    "Your positive action combined with positive thinking results in success. - Shiv Khera",
    "Don’t focus on negative things; focus on the positive, and you will flourish. - Alek Wek"

]
# client.update(quotes_bank.sample)
client.update_with_media(quotes_bank.sample, File.new("assets/images/photo1.jpeg"))
# .to_a.select{|f| 
#     f.downcase.match(/\.jpg|\.jpeg|\.png/)}.sample)
 