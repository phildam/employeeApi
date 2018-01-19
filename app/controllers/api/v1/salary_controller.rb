module Api

  module V1


    class SalaryController < ApplicationController


      def index

        salary=Employee.joins(:salaries => :employee)


        # hasher=employeeSalary(params)
        # ursalary=hashToJson hasher


        json_render(salary,params[:employee_id])
      end

      def create

      end

      def show

      end

      def update

      end

      def destroy

      end

      private
      def hashToJson(hashly)
        JSON.generate(hashly)
      end

      def employeeSalary(params)

        rehashed={'employee' => Employee.where(employee_id: params[:employee_id]),
        'from_date'=> params[:from_date] ,
        'to_date'=> params[:to_date] ,
        'Employee Salary'=> params[:salary]};
        return rehashed;
      end


      def salary_params
        params.permit(:employee , :salary,  :from_date,
                      :to_date,  :created_at, :updated)
      end

    end


  end

end
