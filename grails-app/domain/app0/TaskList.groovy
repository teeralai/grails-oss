package app0

class TaskList {

    String name
    static hasMany = [tasks : Todo]

    static constraints = {
    }


}
