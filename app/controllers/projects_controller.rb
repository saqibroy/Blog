class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :update, :edit,:destroy]
	def index
		@projects= Project.all.order("created_at desc").paginate(page: params[:page])
	end
	def new
		@project= Project.new
	end
	def create
		@project= Project.create(project_params)
		if @project.save
			redirect_to @project, notice: "yea!, you create it."
		else
			render 'new', notice: "No, You failed us!" 
		end
	end
	def show
		
	end
	def edit
		
	end
	def update
		if @project.update project_params
			redirect_to @project, notice: "wah!, You project is updated!"
		else
			render 'edit', notice: "cant updated, somethings wrong"
		end
	end
	def destroy
		@project.destroy
		redirect_to projects_path
	end

	private
	def project_params
		params.require(:project).permit(:title,:description,:link, :slug)
	end
	def find_project
		@project= Project.friendly.find(params[:id])
	end
end
