
import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Muslims believe that Muhammad was one of many prophets.", a: "True"),
        Question(q: "After Muhammad started receiving revelations, his preaching was immediately welcomed by most of the people of Mecca.", a: "False"),
        Question(q: "The hijra is the term for the migration of Muhammad and his followers from Mecca to Cairo.", a: "False"),
        Question(q: "The language of the Qur’an is Arabic.", a: "True"),
        Question(q: "There is only one source of Islamic law—the Sunnah.", a: "False"),
        Question(q: "Muslims believe in the coming Day of Judgment.", a: "True"),
        Question(q: "During the month of Ramadan, devout Muslims make the pilgrimage to Mecca.", a: "False"),
        Question(q: "One of the Five Pillars is the duty of able Muslims to make the pilgrimage to Baghdad.", a: "False"),
        Question(q: "There are many sources of shari’ah, including the Qur’an and the Sunnah.", a: "True"),
        Question(q: "Most African-American Muslims belong to the Nation of Islam.", a: "False")
        
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

