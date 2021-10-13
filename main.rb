class Student
  MAX_COURSES = 5

  def add_to_schedule(course, schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
    course_list_for_quarter = quarter.course_list
    max_courses = course_list_for_quarter.maximum_number_of_courses
    course_list_for_quarter.add(course) if max_courses < MAX_COURSES
  end

  def remove_from_schedule(course, schedule, quarter_id)
    schedule.quarter[quarter_id].course_list.remove(course)
  end
end