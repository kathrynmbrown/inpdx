class AddCompanyDetailsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :company_details, :text
    add_column :companies, :website, :string
  end
end
