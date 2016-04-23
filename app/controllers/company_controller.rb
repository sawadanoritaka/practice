class CompanyController < ApplicationController
  def part1
    if params[:back]
      @company = Company.new(company_params)
    else
        @company = Company.new
    end
  end
  def part2
   # 入力値のチェック
    @company = Company.new(company_params)
    if @company.valid?
      render :action => 'part2'
    else
      render :action => 'part1'
    end
  end
  def part3
    @company = Company.new(company_params)
    @company.save

end

 private
  def company_params
    params.require(:company).permit(:name, :email ,:message)
  end
end
