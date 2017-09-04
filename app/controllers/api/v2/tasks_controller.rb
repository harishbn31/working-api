class Api::V2::TasksController < Api::V2::ApiController
	def index
		@tasks =Task.all
	end

	def create
		@task =Task.new(task_params)
			if @task.save
				render 'create.json'
			else
				render 'error.json'
			end
		end
	

private

	def task_params
		params[:task].permit(:title,:due_date,:is_completed)
	end
end

