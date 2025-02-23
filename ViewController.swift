import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!

    @IBAction func generateRandomNumbers(_ sender: UIButton) {
        let randomNumbers = generateUniqueRandomNumbers(count: 6, range: 1...50)

        Label1.text = String(randomNumbers[0])
        Label2.text = String(randomNumbers[1])
        Label3.text = String(randomNumbers[2])
        Label4.text = String(randomNumbers[3])
        Label5.text = String(randomNumbers[4])
        Label6.text = String(randomNumbers[5])
    }

    func generateUniqueRandomNumbers(count: Int, range: ClosedRange<Int>) -> [Int] {
        var numbers = Set<Int>()

        while numbers.count < count {
            let randomNumber = Int.random(in: range)
            numbers.insert(randomNumber)
        }
        
        return Array(numbers).sorted()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
 
        Label1.text = "--"
        Label2.text = "--"
        Label3.text = "--"
        Label4.text = "--"
        Label5.text = "--"
        Label6.text = "--"
    }
}
