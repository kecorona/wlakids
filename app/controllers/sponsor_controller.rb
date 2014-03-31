class SponsorController < ApplicationController
	before_action :set_sponsor, only: [:show, :edit, :update, :destroy]

	# GET /sponsors
	# GET /sponsors.json
	def index
		@sponsors = Sponsor.all
	end

	# GET /sponsors/1
	# GET /sponsors/1.json
	def show
	end

	# GET /sponsors/new
	def new
		@sponsor = Sponsor.new
	end

	# GET /sponsors/1/edit
	def edit
	end

	# POST /sponsors
	# POST /sponsors.json
	def create
		@sponsor = Sponsor.new(sponsor_params)
		respond_to do |format|
			if @sponsor.save
				format.html { redirect_to @sponsor, notice: 'Sponsor was successfully created.' }
				format.json { render action: 'show', status: :created, location @sponsor }
			else
				format.html { render action: "new" }
				format.json { render json: @sponsor.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /sponsors/1
	# PATCH/PUT /sponsors/1.json
	def update
		respond_to do |format|
			if @sponsor.update(sponsor_params)
				format.html { redirect_to @sponsor, notice: 'Sponsor was successfully updated.' }
				format.json { render json: @sponsor.errors, status: :unprocessable_entity }
			end
		end
	end 

	# DELETE /sponsors/1
	# DELETE /sponsors/1.xml
	def destroy
		@sponsor.destroy

		respond_to do |format|
			format.html { redirect_to sponsors_url }
			format.json { head :no_content }
		end
	end

	private

	def set_sponsor
		@sponsor = sponsor.find(params[:sponsor_id])
	end

	def sponsor_params
		params.require(:sponsor).permit(:name, :id)
	end
end
