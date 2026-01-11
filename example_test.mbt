
///|
using @liuxinbo1984/example {type Student, type ExamResult}

test "count qualified students" {

  let students: Array[Student] = [
    Student::new("0", 10.0),
    Student::new("1", 50.0),
    Student::new("2", 61.0),
  ]

  let criteria1 = fn(student: Student) -> ExamResult { is_qualified(student, 10) }
  let criteria2 = fn(student: Student) -> ExamResult { is_qualified(student, 50) }
  assert_eq(count_qualified_students(students, criteria1), 3)
  assert_eq(count_qualified_students(students, criteria2), 2)
}