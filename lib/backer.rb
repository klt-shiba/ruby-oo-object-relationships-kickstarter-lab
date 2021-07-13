class Backer
   attr_reader :name
   def initialize(name)
    @name = name
   end

   def back_project(project)
    project = ProjectBacker.new(project, self)
   end

   def backed_projects
    results = []
        ProjectBacker.all.each do |project|

            if project.backer == self
                results << project.project
            else 
            end
        end
        results
    end

end