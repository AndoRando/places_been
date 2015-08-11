require('rspec')
require('places_been')

describe(Place) do
  describe("#place_name") do
    it("adds the name of the place") do
      test_place = Place.new("Shenaniganistan")
      expect(test_place.place_name()).to(eq("Shenaniganistan"))
    end
  end

  describe(".all") do
    it('is empty at first') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('saves places to all places array') do
      test_place = Place.new("Iran")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
end
