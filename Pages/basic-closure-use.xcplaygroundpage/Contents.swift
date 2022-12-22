func sendMessage() -> (String) ->String {
    return { (name: String) -> String in
        return "good morning " + name
    }
}

func sendEmail() -> (String) ->String {
    return { (to) in "mail to " + to }
}

func sendPaper() -> (String) -> String {
    return { "give paper to " + $0 }
}

let message = sendMessage()
print(message("austin"))

let mail = sendEmail()
print(mail("moonkey"))

let paper = sendPaper()
print(paper("moon"))


