import norm/model


type
  MyTask* = ref object of Model
    description*: string
    assignee*: string

func newMyTask*(description: string, assignee: string): MyTask =
  MyTask(description: description, assignee: assignee)

func newMyTask*: MyTask =
  MyTask(description: "", assignee: "")
