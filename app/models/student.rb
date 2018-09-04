class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def index
    @studet = Student.all
  end
  
  def show
    @student = Student.find_by(id: params[:id])
  end

  def 
    @student = Student.find_by(id: params[:id])
    
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    
    @student.save
    redirect_to student_path(@student)
  end
end