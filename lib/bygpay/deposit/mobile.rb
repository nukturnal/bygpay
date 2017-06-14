module Bygpay
  module Deposit
    class Mobile < Bygpay::Deposits

      # {
      #     "walletno" : "0276967627",
      #     "provider": "TIGO",
      #     "extrnx_code": null
      # }
      # Perform a mobile deposit request
      def charge(amount, payload ={})
        post(mobile_deposit_endpoint, payload.merge({amount: amount}))
      end

      # Return deposit transaction status
      def transaction_status(uuid)
        get_status(deposit_status_endpoint,uuid)
      end

    end
  end
end