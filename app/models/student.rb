class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def grade_percentage
        my_tests = BoatingTest.all.select { |test| test.student == self }
        my_passing_tests = my_tests.select { |test| test.status == 'passed' }

        my_passing_tests.size.to_f / my_tests.size.to_f
    end

    def self.all
        @@all
    end

    def self.find_student(student_name)
        self.all.find { |student| student.name == student_name }
    end

end
