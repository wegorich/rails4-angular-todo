class Api::TasksController < Api::BaseController
  before_action :check_permissions

  def index
    render json: task_list.tasks
  end

  def create
    task = task_list.tasks.create!(safe_params)
    render json: task, status: 201
  end

  def update
    task.update_attributes(safe_params)
    render nothing: true, status: 204
  end

  def destroy
    task.destroy
    render nothing: true, status: 204
  end

  private
  def task_list
    @task_list ||= TaskList.find(params[:task_list_id])
  end

  def task
    @task ||= task_list.tasks.find(params[:id])
  end

  def safe_params
    params.require(:task).permit(:name, :target_priority, :done, :due_date)
  end

  def check_permissions
    permission_denied if current_user != task_list.user
  end
end