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
    "I am a powerful creator. I create the life I want and enjoy it.",
    "I am surrounded by positive, supportive people who believe in me.",
    "I stay focused on my vision and pursue my daily work with passion.",
    "I take pride in my ability to make worthwhile contributions to the world.",
    "Everywhere I look, I see prosperity.",
    "As I allow more abundance into my life, more doors open for me.",
    "Wealth constantly flows into my life.",
    "Believe you can and you’re halfway there. - Teddy Roosevelt",
    "You cannot have a positive life and a negative mind. - Joyce Meyer",
    "If you are positive, you’ll see opportunities instead of obstacles. - Widad Akrawi ",
    "I am succeeding in life.",
    "Today I am going to bid farewell to old bad habits and welcome a positive change in my life.",
    "I am worthy enough to follow my dreams and manifest my desires.",
    "Today I am prepared. I am prepared for success, love, happiness,peace, joy, and abundance! I am prepared for my wildest dreams to come true.",
    "I am the architect of my fate. I can achieve what I have dreamt for myself.",
    "Write it on your heart that every day is the best day in the year. - Ralph Waldo Emerson",
    "Accentuate the positive, Eliminate the Negative, latch onto the affirmative. - Bing Crosby",
    "I am worthy of all the good life has to offer, and I deserve to be successful.",
    "I am always open-minded and eager to explore new avenues to success.",
    "I am worthy of my dream job and am creating the career of my dreams.",
    "I believe in me.",
    "I easily accomplish all of my goals.",
    "I am enough.",
    "I will go anywhere as long as it’s forward. - David Livingston",
    "My dear friend, clear your mind of can’t. - Samuel Johnson",
    "Keep a smile on your face. Keep a spring in your step. - Joel Osteen",
    "A positive atmosphere nurtures a positive attitude,which is required to take positive action. - Richard M. DeVos",
    "Turn every life situation into a positive one. - Rhonda Byrne",
    "Believe that life is worth living and your belief will help create the fact. - William James",
    "The most positive men are the most credulous - Alexander Pope",
    "I believe that I can do anything.",
    "I have goals and dreams that I am going to achieve.",
    "I am a goal-getter and won\’t stop at anything to achieve my goals.",
    "I am committed to achieving success in every area of my life.",
    "I choose positivity.",
    "Your positive action combined with positive thinking results in success. - Shiv Khera",
    "Don’t focus on negative things; focus on the positive, and you will flourish. - Alek Wek"

]
# client.update(quotes_bank.sample)
client.update_with_media(quotes_bank.sample, Dir.glob("images/*.jpeg").sample)
 sleep 43200