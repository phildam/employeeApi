
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
        employee=Employee.where(id: params[:id]);
       if employee.exists?
          json_render employee
       else
          json_render("Data does not exist","failed","Retrieval failed",:unprocessable_entity)
       end

     end

     def update
        employee=Employee.find(params[:id])
        if employee.update_attributes(employee_params)
          json_render employee
        else
          json_render(employee, "failed","update failed",:unprocessable_entity)
        end

     end

     def destroy
        employee=Employee.find(params[:id]);
        employee.destroy
        if employee.destroyed?
          json_render(employee,"success","Deleted",:ok);
        else
          json_render(employee,"failed","Deletion failed",:unprocessable_entity);
        end
     end


     private
     def employee_params
       params.permit(:birth_date , :first_name,  :lastname,
                        :gender,  :hire_date)
     end

   end

  end

end