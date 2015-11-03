module BceExplorer
  # Address entity
  module Entities
    Address = Struct.new :address,
                         :sent,
                         :received,
                         :minted,
                         :balance,
                         :wallet,
                         :txs do
      def self.create_from(params = {})
        new params['address'],
            (params['sent'] || 0.0),
            (params['received'] || 0.0),
            (params['balance'] || 0.0),
            params['wallet'], params['txs']
      end
    end
  end
end
