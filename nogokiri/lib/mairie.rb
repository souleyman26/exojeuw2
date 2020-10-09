require 'nokogiri'
require 'open-uri'

valedoise = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))


def get_townhall_urls(valedoise)
   final = []
  valedoise_cities = valedoise.xpath('//a[@class=\'lientxt\']/@href').map{|town| town.text[2..-1]}
  valedoise_cities.each do |page|
    final_mail = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/#{page}"))
    mail = final_mail.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    final << mail.text
  end

  return final
end

def cities_name(valedoise)
    name = []
    valedoise_cities = valedoise.xpath('//a[@class=\'lientxt\']')
    valedoise_cities.each do |city|
        name << city.text
    end
    return name
end
 

 def result (valedoise)
    result = Hash[cities_name(valedoise).zip(get_townhall_urls(valedoise))]
    final_result = []

    result.each do |name, value|
        final_result << {name => value}
    end

    return final_result
 end
 puts result(valedoise)