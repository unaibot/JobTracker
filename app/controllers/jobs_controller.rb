class JobsController < ApplicationController

	def index	
		@jobs = Job.all.order("created_at DESC")	
	end

	def show
		
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		@job.status = "Active"
			if @job.save

				redirect_to root_path
			else
				render 'new'
			end		
	end

	def edit
	end

	def update
		if @job.update(job_params)
			redirect_to job_path
		else
			render 'edit'
		end
	end

	def destroy
		@job.destroy
		redirect_to root_path
	end

	private

		def job_params
			params.require(:job).permit(:title, :link, :notes)
		end

		def find_job
			@job = Job.find(params[:id])
			
		end

end
