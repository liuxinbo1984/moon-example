pub(all) struct Student {
  id : String;
  score : Double;
}

pub fn Student::new(id: String, score: Double) -> Student {
  { id, score }
}

pub(all) enum ExamResult {
  Pass
  Fail
} derive(Eq,Show)


pub fn is_qualified(student : Student, criteria: Double) -> ExamResult {
  if student.score >= criteria {
    Pass
  } else {
    Fail
  }
}

pub fn count_qualified_students(
  students : Array[Student],
  is_qualified : (Student) -> ExamResult
) -> Int {
  let mut count = 0
  for student in students {
    if is_qualified(student) == Pass {
      count = count + 1
    }
  }
  count
}