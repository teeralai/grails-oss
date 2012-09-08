package app0

class Todo {

    String subject = "abc"
    Date dueDate = new Date()
    Integer priority =1
    String description =""

    TaskList taskList
    static constraints = {
        subject()
        dueDate()
        priority()
        description(size:0..1000)
    }
}
