class ESPN
  API_KEY = "th54j2s5dajguhrndh3gwmgq"
  NOW_URL = "http://api.espn.com/v1/now?apikey=#{API_KEY}"

  def now(&callback)
    AFMotion::JSON.get(NOW_URL) do |result|
      if result.success?
        callback.call result.object
      else
        callback.call nil
      end
    end
  end
end
