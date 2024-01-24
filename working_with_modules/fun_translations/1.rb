require 'fun_tanslations'

client = FunTranslations.client
result = client.translate(:pirate, 'Hello sir!')
puts result.translated_text
