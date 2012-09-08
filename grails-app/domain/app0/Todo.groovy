package app0

class Todo {

    String subject
    Date dueDate
    Integer priority
    String description

    static constraints = {
        subject()
        dueDate()
        priority()
        description(size:0..1000)
    }
}
