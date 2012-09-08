package app0

class Todo {

    String subject = "abc"
    Date dueDate = new Date()
    Integer priority =1
    String description =""
    String personId
    TaskList taskList

    static constraints = {
       // subject()
       // dueDate()
       // priority()
       // description(size:0..1000)

       personId(size:13..13, matches:/\d{13}/)


    }
}
