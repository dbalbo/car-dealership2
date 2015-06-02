class Place

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:place) do
    @place
  end
  define_singleton_method(:all) do
    []
  end
end
