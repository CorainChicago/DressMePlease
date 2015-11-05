class Forecast
  require 'forecast_io'

  API_KEY = 'fe673f29237366e8127b9145688a45a7'
  IMAGE_PATH = '/images/'

  ForecastIO.api_key = API_KEY

  def self.get_forecast(coordinates = {latitude: 41.889717, longitude: -87.637611})
    forecast = ForecastIO.forecast(coordinates[:latitude], coordinates[:longitude]).hourly.data[7]
    return forecast.merge({icon: get_image(forecast.icon)})
  end

  private

  def self.get_image(icon)
    IMAGE_PATH + icon + '.png'
  end

end