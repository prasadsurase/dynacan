class RolesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_super_admin

  def index
    @roles = Role.all
  end

  def edit
    @role = Role.find(params[:id])
    @permissions = Permission.all
  end

  def update
    @role = Role.find(params[:id])
    @role.permissions = []
    if @role.save
      redirect_to roles_path and return
    end
    render 'edit'
  end

  private

  def is_super_admin?
    current_user.role.name == "Super Admin"
  end
end
