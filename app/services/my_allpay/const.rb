module MyAllpay
  class Service
    VERSION = '1.0.0'

    # 可選擇 allpay(歐付寶) or ecpay(綠界)
    # 基本上api一樣，只差在實名制差別，歐付寶(第三方支付), 綠界(金流服務)。
    TYPE = 'allpay' # or ecpay

    # 綠界 https://payment.ecpay.com.tw
    # allpay https://payment.allpay.com.tw
    PRODUCTION_API_HOST = "https://payment.#{TYPE}.com.tw".freeze
    TEST_API_HOST = "https://payment-stage.#{TYPE}.com.tw".freeze

    # 付款方式
    All_PAYMENT_TYPE = [['Credit', '信用卡'],['ATM', 'ATM自動櫃員機'],['CVS', '超商代碼'],['Tenpay', '財付通'],['TopUpUsed', '儲值消費']]
    EC_PAYMENT_TYPE = [['Credit', '信用卡'],['ATM', 'ATM自動櫃員機'],['CVS', '超商代碼']]
    PAYMENT_TYPE = TYPE == 'allpay' ? All_PAYMENT_TYPE : EC_PAYMENT_TYPE
    # ALL:不指定付款方式，由歐付寶顯示付款方式選擇頁面。
    # 注意事項：若為手機版時不支援下列付款方式: ['WebATM', '網路 ATM'], ['BARCODE', '超商條碼繳款'] # BARCODE 只有綠界有
    # Allpay API PATH
    AIO_PATH = '/Cashier/AioCheckOut/V2'
    QUERY_TRADE_INFO_PATH = '/Cashier/QueryTradeInfo/V2'

  end
end