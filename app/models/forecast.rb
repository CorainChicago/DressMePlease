class Forecast
  require 'forecast_io'

  API_KEY = 'fe673f29237366e8127b9145688a45a7'

  ForecastIO.api_key = API_KEY

  def self.get_forecast(coordinates = {latitude: 41.889717, longitude: -87.637611})
    forecast = ForecastIO.forecast(coordinates[:latitude], coordinates[:longitude])

    puts forecast

  end




end

Forecast.get_forecast.hourly.data[7]