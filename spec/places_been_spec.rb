require('rspec')
require('places_been')

describe(Place) do
  describe("#place_name") do
    it("adds the name of the place") do
      test_place = Place.new("Shenaniganistan")
      expect(test_place.place_name()).to(eq("Shenaniganistan"))
    end
  end
end
