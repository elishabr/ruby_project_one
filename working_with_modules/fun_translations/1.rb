require 'fun_translations'

client = FunTranslations.client
result = client.translate(:pirate, 'Hello sir!')
puts result.translated_text
