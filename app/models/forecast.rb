class Forecast
  require 'forecast_io'

  API_KEY = 'fe673f29237366e8127b9145688a45a7'

  ForecastIO.api_key = API_KEY

  def self.get_forecast(coordinates = {latitude: 41.889717, longitude: -87.637611})
    return ForecastIO.forecast(coordinates[:latitude], coordinates[:longitude]).hourly.data[7]
  end

end

