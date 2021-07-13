class Project
    attr_reader :title
    def initialize(title)
     @title = title
    end 

    def add_backer(backer)
        backer = ProjectBacker.new(self, backer)
    end

    def backers
        results = []
        ProjectBacker.all.each do |project|

            if project.project == self
                results << project.backer
            else 
            end
        end
        results
    end

 end