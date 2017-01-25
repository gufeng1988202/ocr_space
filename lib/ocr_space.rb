require 'ocr_space/version'
require 'ocr_space/convert'
require 'ocr_space/banner'

module OcrSpace
  class Resource
    attr_reader :data

    include OcrSpace::Convert

    def initialize(apikey: ENV['ocr_api_key'])
      @api_key = apikey
    end

    def text_data
        data[0]['ParsedText'].delete("\n").delete("\r").strip
    end
  end
end
