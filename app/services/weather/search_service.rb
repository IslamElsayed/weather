require 'open_weather'

module Weather
  class SearchService
    attr_reader :city_name, :country_code

    def initialize(q)
      @city_name = q[:city_name]
      @country_code = q[:country_code]
    end

    def execute
      OpenWeather::Current.city("#{city_name}, #{country_code}", options)
    end

    private
      def options
        { units: "metric", APPID: "d7d9178a11162d5a87bd4bb0088dfc74" }
      end
  end
end
