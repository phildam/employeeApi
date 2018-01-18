
module Api

  module V1

   class EmployeesController < ApplicationController

     def new

     end

     def index
       employee=Employee.order('created_at DESC');
       json_render employee;
     end

     def create
       employee=Employee.new()

     end

     def show
       employee=Employee.find(params[:id])
       json_render employee
     end

     def update

     end

     def destroy

     end


     private
     def json_render(model)
       render json: {status: 'sucess', message: 'loaded employee',data: model}, status: :ok
     end

     def employee_params
       params.permit(:birth_date, :first_name, :lastname, :gender, :hire_date)
     end

   end

  end

end