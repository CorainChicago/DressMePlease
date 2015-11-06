class Recommendation
  attr_reader :weather
  attr_accessor :dress_preferences

    def initialize()
      @dress_preferences = User.find_by(email: 'cat@cat.com').preference
      @weather = Forecast.get_forecast()
      p @weather
    end

    def compile_recommendations
      items = []
      items << need_coat?
      items << need_jacket?
      items << need_hat?

      # items << ponytail_it?
      items << need_umbrella?
      items << need_galoshes?

      items << need_sunglasses?
      items << short_sleeves_okay?



      return items
    end

    private

    def need_coat?
      return "coat" if weather[:temperature] <= dress_preferences[:temp_coat]
    end

    def need_jacket?
      return "jacket" if weather[:temperature] <= dress_preferences[:temp_jacket]
    end

    def need_hat?
      true if weather[:temperature] <= dress_preferences[:temp_hat]
    end

    # def ponytail_it?
    #   true if weather[:windspeed] >= dress_preferences[:wind_speed_ponytail] || weather[:humidity] >= dress_preferences[:humidity_hair]
    # end

    def need_umbrella?
      return "umbrella" if weather[:precipProbability] >= dress_preferences[:precipitation_probability_umbrella]
    end

    def need_galoshes?
      return "galoshes" if weather[:precipIntensity] >= dress_preferences[:precipitation_intensity_golashes]
    end

    def need_sunglasses?
      return "sunglasses" if weather[:cloudCover] <= dress_preferences[:cloud_coverage_sunglasses]
    end

   def short_sleeves_okay?
     return "short sleeves" if weather[:humidity] >= dress_preferences[:humitdity_short_sleeves] && weather[:temperature] > 65
   end

end
