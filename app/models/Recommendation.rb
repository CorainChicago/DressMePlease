class Recommendation
  attr_reader :dress_preferences, :weather

    def initialize()
      @dress_preferences = Preference.first
      @weather = Forecast.get_forcast({latitude: xxx, longitude: yyy})
    end

    def compile_recommendations
      items = []
      items << need_coat?
      items << need_jacket?
      return items
    end

    private

    def need_coat?
      return "coat" if weather[:temperature] =< dress_preferences[:temp_coat]
    end

    def need_jacket?
      true if weather[:temperature] =< dress_preferences[:temp_jacket]
    end

    def need_hat?
      true if weather[:temperature] =< dress_preferences[:temp_hat]
    end

    def ponytail_it?
      true if weather[:windspeed] >= dress_preferences[:wind_speed_ponytail] || weather[:humidity] >= dress_preferences[:humidity_hair]
    end

    def need_umbrella?
      true if weather[:precipProbability] >= dress_preferences[:precipitation_probability_umbrella]
    end

    def need_galoshes?
      true if weather[:precipIntensity] >= dress_preferences[:precipitation_intensity_golashes]
    end

    def need_sunglasses?
      true if weather[:cloudCover] =< dress_preferences[:cloud_coverage_sunglasses]
    end

   def short_sleeves_okay?
     true if weather[:humidity] >= dress_preferences[:humitdity_short_sleeves]
   end

end
