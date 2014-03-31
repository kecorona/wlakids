class businessController < ApplicationController
	before_action :set_business, only: [:show, :edit, :update, :destroy]

	# GET /businesses
	# GET /businesses.json
	def index
		@businesses = Business.all
	end

	# GET /businesses/1
	# GET /businesses/1.json
	def show
		@business = business.find(params[:id, as: :business_line])
	end

	# GET /businesses/new
	def new
		@business = Business.new
	end

	# GET /businesses/1/edit
	def edit
	end

	# POST /businesses
	# POST /businesses.json
	def create
		@business = business.new(business_params)
		respond_to do |format|
			if @business.save
				format.html { redirect_to @business, notice: 'Business Line was successfully created.' }
				format.json { render action: 'show', status: :created, location @business }
			else
				format.html { render action: "new" }
				format.json { render json: @business.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /businesses/1
	# PATCH/PUT /businesses/1.json
	def update
		respond_to do |format|
			if @business.update(business_params)
				format.html { redirect_to @business, notice: 'Business Line was successfully updated.' }
				format.json { render json: @business.errors, status: :unprocessable_entity }
			end
		end
	end 

	# DELETE /businesses/1
	# DELETE /businesses/1.xml
	def destroy
		@business.destroy

		respond_to do |format|
			format.html { redirect_to businesses_url }
			format.json { head :no_content }
		end
	end

	private

	def set_business
		@business = business.find(params[:id])
	end

	def business_params
		params.require(:business).permit(:id, :business_line)
	end
end
