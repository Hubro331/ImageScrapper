# ImageScrapper
# How to Use it 
# Clone the Repo 

require_relative 'genie'

g = Genie.new("https://unsplash.com/s/photos/pretty") 
g.fetch_content 
g.images
