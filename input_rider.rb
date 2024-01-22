# frozen_string_literal: true

class InputReader # rubocop:disable Style/Documentation
  def self.read(welcom_msg: nil, validator: nil, error_msg: nil, process: nil)
    puts welcom_msg unless welcom_msg.nil?
    value = gets.strip
    value = process.call(value) if process
    return value if validator.nil? || validator.call(value)

    puts error_msg unless error_msg.nil?
    read(welcom_msg:, validator:, error_msg:)
  end
end

InputReader.read welcom_msg: 'Ваше имя:',
                 validator: ->(val) { !val.empty? },
                 error_msg: 'error name person'

InputReader.read welcom_msg: 'Ваш ответ',
                 validator: ->(val) { val.between?('A', 'D') },
                 error_msg: 'Ответ от A до D',
                 process: ->(val) { val[0].to_s }
