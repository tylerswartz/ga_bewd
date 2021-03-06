# HINT: You will have to add an initialize method!
require 'json'
require 'rest-client'

class Reddit
  # TODO: This class should have an attribute called "stories".
  attr_accessor :stories

  def initialize
    @stories = []
  end

  # HINT: Start here!
  def fetch_stories

    response = JSON.load(RestClient.get("http://reddit.com/.json"))

    response['data']['children'].each do |child|
      title = child['data']['title']
      url = child['data']['url']
      ups = child['data']['ups']
      site = 'reddit.com'
      
      my_story = Story.new(title,ups,url,site)
      @stories << my_story
    end
     @stories
  end
end
    

    # Story.new 


    # 2. Your code should find the title, upvotes, and story URL
    #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument
    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects


