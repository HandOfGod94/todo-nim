import unittest
import todo/models/my_task

suite "MyTask validations":

  test "with valid values":
    let description = "Do this"
    let assignee = "gahan"
    check(not newMyTask(description, assignee).isNil)

  test "creates a blank task when no values are provided":
    let task = newMyTask()
    check(task.description == "")
    check(task.assignee == "")
