class Api::V1::CompaniesController < ApiController
    before_action :set_company, only: [:show, :update, :destroy]
    def index
        # @companies = Company.all
        @companies = current_user.companies
        render json: {status: {code: 200, message: "Success"}, data: @companies}
    end

    def show
        render json: {status: {code: 200, message: "Success"}, data: @company}
    end

    def create
        @company = current_user.companies.new(company_params)
        if @company.save
            render json: {status: {code: 201, message: "New Company created"}, data: @company}
        else
            render json: {status: {code: 422, message: "Could not create new company"}, errors: @company.errors.full_messages}
        end
    end

    def update
        if @company.update(company_params)
            render json: {status: {code: 200, message: "Company updated successfully"}, data: @company}
        else
            render json: {status: {code: 422, message: "Could not update company"}, errors: @company.errors.full_messages}
        end
    end

    def destroy
        if @company.destroy
            render json: {status: {code: 200, message: "Company deleted successfully"}, data: @company}
        end
    end

    private

    def set_company
        # @company = Company.find(params[:id])
        @company = current_user.companies.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
        render json: {status: {code: 404, message: "Not Found"}, errors: e.message}
    end

    def company_params
        params.require(:company).permit(:name, :address, :established_year)
    end
end
