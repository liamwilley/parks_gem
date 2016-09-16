require "parks_gem/version"
require "unirest"

module ParksGem
 class Parks

  def initialize(park_hash)
    @location = parks_hash[park][18][0]
  end

  def self.all? 
    parks_array = Unirest.get("https://data.sfgov.org/api/views/z76i-7s65/rows.json?accessType=DOWNLOAD").body["data"]
    create_parks(parks_array)
  end

end
