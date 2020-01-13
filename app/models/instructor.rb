class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def pass_student(student,test_name)
        test = BoatingTest.all.find { |test| test.student == student && test.name == test_name }
        if test
            test.status = 'passed'
            test
        else
            BoatingTest.new(student,test_name,'passed',self)
        end
    end

    def fail_student(student,test_name)
        test = BoatingTest.all.find { |test| test.student == student && test.name == test_name }
        if test
            test.status = 'failed'
            test
        else
            BoatingTest.new(student,test_name,'failed',self)
        end
    end

    def self.all
        @@all
    end

end
