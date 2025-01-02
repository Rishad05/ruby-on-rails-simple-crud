class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
  
    # List all students
    def index
        @students = Student.order(created_at: :desc)
      end
       
  
    # Show form to create a new student
    def new
      @student = Student.new
    end
  
    # Create a new student
    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to students_path, notice: 'Student was successfully created.'
      else
        render :new
      end
    end

    # Show a specific student
    def show
    end
  
    # Show form to edit an existing student
    def edit
    end
  
    # Update an existing student
    def update
      if @student.update(student_params)
        redirect_to students_path, notice: 'Student was successfully updated.'
      else
        render :edit
      end
    end
  
    # Destroy a student record
    def destroy
      @student.destroy
      redirect_to students_path, notice: 'Student was successfully deleted.'
    end
  
    private
  
    def set_student
      @student = Student.find(params[:id])
    end
  
    def student_params
      params.require(:student).permit(:name, :age, :gender)
    end
  end
  