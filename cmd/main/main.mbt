///|
// fn main {
//   println(@lib.fib(10))
// }

using @liuxinbo1984/example { type Student, type ExamResult, is_qualified }

fn main {
  let students: Array[Student] = [
    Student::new("0", 10.0),
    Student::new("1", 50.0),
    Student::new("2", 61.0),
  ]

  println(@lib.count_qualified_students(students, fn(student: Student) -> ExamResult { 
    is_qualified(student, 10) })
    
  )
}
