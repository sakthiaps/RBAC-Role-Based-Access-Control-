class RolesController < ApplicationController
  before_action :set_role, :only => [:edit, :update, :show, :destroy]

  def index
   @role_lists_grid = initialize_grid(Role,
                                  order: 'roles.id',
                                  order_direction: 'desc',
                                  name: 'g1'
    )

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to(roles_path,
                  notice: "Role has been created for user")
    else
      render :new
    end
  end

  def edit
  end

  def update
    @role = Role.find(params[:id])

    if @role.update_attributes(role_params)
      redirect_to(role_path(@role),
                  notice: "User role has been updated")
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @role.destroy
      redirect_to(roles_path,
                  notice: "User role has been deleted")
    end
  end

  def access
    role = Role.where(:user_id => params[:user_id], :action_type_id => params[:action_type_id],
                      :resource_id => params[:resource_id])

    if params[:user_id].present?
      if role.present?
        redirect_to(access_roles_path, notice: "You can access this resource")
      else
        redirect_to(access_roles_path, alert: "Sorry..You don't have access for this resource")
      end
    end
  end

  private

  def role_params
    params.require(:role).permit(:user_id, :action_type_id, :resource_id)
  end

  def set_role
    @role = Role.find(params[:id])
    raise HttpError::NotFound unless @role.present?
  end
end
