require 'mapbox'
require 'test/unit'
require 'mocha/setup'
require 'shoulda'

module Mapbox
  class DirectionsTest < Test::Unit::TestCase
    should "#directions" do
      Mapbox.access_token = ENV["MapboxAccessToken"]
      result = Mapbox::Directions.directions([
        {
          :longitude => -100,
          :latitude => 38
        },
        {
          :longitude => -90,
          :latitude => 38
        }
      ], "cycling", {
        geometries: "geojson"
      })
      assert result
    end
  end
end
