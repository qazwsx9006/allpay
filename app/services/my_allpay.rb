require 'my_allpay/const'

module MyAllpay
  class Service
    attr_reader :options
    def initialize(options = {})
      @options = options
      @options.freeze
    end


  end

  module_function
  def service
    my_allpay_config = ALLPAY_CONFIG[Service::TYPE]
    @allpay_service ||= MyAllpay::Service.new({
      merchant_id: my_allpay_config['merchant_id'],
      hash_key: my_allpay_config['hash_key'],
      hash_iv: my_allpay_config['hash_iv'],
    })
  end
end