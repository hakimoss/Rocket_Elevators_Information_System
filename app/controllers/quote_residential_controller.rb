class CreateQuoteResidential < ActiveRecord: :Migration[5.2]
    def change
        create_table :residentialQuote do |t|
            t.int :residentialApp
            t.int :residentialFloor
            t.int :residentialBasement
            
            t.int :elevatorAmount
            t.int :elevatorUnitPrice
            t.int :elevatorTotalPrice
            t.int :installationFees
            t.int :finalPrice
        end
    end
end