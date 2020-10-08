require 'nokogiri'
require 'open-uri'
require 'rubygems'
#page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html")) 


#  def name (page)
#     array_names = []
# xpath_symboles = page.xpath'//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div'
# xpath_symboles.each do |names|
#     array_names << names.text
# end
#     return array_names
# end

# def values(page)
#     array_values =[]

# xpath_prix = page.xpath'//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a'

# xpath_prix.each do |values|
#     array_values << values.text
# end
#     return array_values
# end



# def Hash_crypto(page)

#     all_symbol = Hash[name(page).zip(values(page))]
#     return all_symbol
# end
# puts Hash_crypto(page)



def names(page)
    array_names = []
    currency_names = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')

    currency_names.each do |names|
        array_names << names.text
    end
    return array_names
end
puts def names(page)
# def values(page)
#     array_values = []
#     currency_values = page.xpath ('//[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a')

#     currency_values.each do |values|
#         array_values << values.text
#     end
#     return array_values
# end

# def hash_crypto(page)
#     hash_crypto = Hash[names(page).zip(values(page))]
#     return hash_crypto
# end
# hash_crypto (page)

# Envoyer un message à @Benjamin SERVAL










