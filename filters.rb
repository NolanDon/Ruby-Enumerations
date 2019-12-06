# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
@candidates

def find(id)
  for candidate in @candidates
    candidate[:id] == id ? candidate : nil
      return candidate
    end
end

def experienced?(candidate)
  # puts candidate
  candidate[:years_of_experience] >= 2 ? true : false
end


def qualified_candidates(candidates)
  candidates.select.each do |candidate|
    candidate[:years_of_experience] >= 2 &&
    candidate[:github_points] >= 100 &&
    candidate[:age] > 17 &&
    candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python") &&
    candidate[:date_applied] < 16.days.ago.to_date
  end
end


# More methods will go below
def ordered_by_qualifications(candidates)
  candidates.sort_by{|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
end
