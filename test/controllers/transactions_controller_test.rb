require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get user:references' do
    get transactions_user: references_url
    assert_response :success
  end

  test 'should get transaction_type:string' do
    get transactions_transaction_type: string_url
    assert_response :success
  end

  test 'should get amount:decimal' do
    get transactions_amount: decimal_url
    assert_response :success
  end
end
