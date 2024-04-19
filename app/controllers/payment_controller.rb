class PaymentController < ApplicationController
  def payment
    render(:template => 'templates/payment')
  end
  def calc_pay
    @apr = params.fetch("user_apr").to_f
    @apr_percent = params.fetch("user_apr").to_f.to_fs(:percentage, {:precision => 4})
    @monthly_apr = (@apr / (100 * 12))
    @years = params.fetch("user_years").to_f 
    @periods = @years * 12
    @principal = params.fetch("user_pv").to_f
    @principal_currency = @principal.to_s(:currency)
    @payment = ((@monthly_apr * @principal).to_f/(1 - (1 + @monthly_apr) ** -@periods)).to_fs(:currency)
    render(:template => 'templates/payment_results')
  end
end
