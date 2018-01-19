
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

       employee=Employee.new(employee_params)

       # employee.lastname= params[:lastname];
       # employee.first_name= params[:first_name];
       # employee.birth_date = params[:birth_date];
       # employee.gender = params[:birth_date];
       # employee.hire_date = params[:hire_date];
       #


       if employee.save

         render json: {status: :ok, message: "Employee saved", data: employee}, status: :ok
       else
         render json: {status: "ERROR", message: "Employee not saved", data: employee.errors, inspect: params[:lastname]},status: :unprocessable_entity
       end

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
       params.permit(:birth_date , :first_name,  :lastname,
                        :gender,  :hire_date)
     end

   end

  end

end