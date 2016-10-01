//: Playground - noun: a place where people can play

import UIKit
import Social

var str = "Hello, playground"

1 + 1
10 * 10

print("aoa")

var score = 100
score *= 2
print(score)

let taxRate = 1.08
var price = 100 * taxRate

var item1:Int = 10
var item2:Float = 1.71
var item3:Double = 64.6
var item4:Bool = false
var item5:String = "hoge"
var item6 = "momo"
var item7 = item6 + "tete"
var item8 = "hoge-\(item7)-hoge"
var item9 = "100"
var item10 = Int(item9)! * 5

if score < 1000 {
    print("good")
} else {
    print("bad")
}

var dice = 1
switch dice {
case 1:
    print("dice 1")
case 2:
    print("dice 2")
default:
    print("default")
}

var i = 0;
while (i<100){
    i += 7;
}
print("ret:\(i)")

for x in 0...3 {
    print(x)
}

var intArray1 = [1,2,3]
var strArray1 = ["A","B","C"]

var intArray2:[Int] = [1,2,3]
var strArray2:[String] = ["A","B","C"]

var intArray3 = Array(count: 3, repeatedValue: 0)
var strArray3 = Array(count: 5, repeatedValue: "A")

var emptyArray1:[String] = []
var emptyArray2 = [String]()

var intArray4 = [1,2,3,4,5]
print(intArray4.count)
print(intArray4[0])

for val in strArray1 {
    print("val=\(val)")
}

var strArray7 = ["A","B","C"]
strArray7.append("D")
strArray7.insert("E", atIndex: 1)
strArray7.removeAtIndex(3)
print(strArray7)
strArray7.removeAll()
print(strArray7)

var intArray11 = [4,3,1,5,2]
var sortArray11 = intArray11.sort({$0 < $1})
var sortArray12 = intArray11.sort({$0 > $1})
print(sortArray11)
print(sortArray12)

var intDictionary1 = ["a":1, "b":2, "c":3]
var strDictionary1 = ["a":"あ", "b":"あ", "c":"あ"]

var emptyDictionay1:[String:Int] = [:]
var emptyDictionay2 = [String:Int]()

var strDictionary3 = ["a":"A", "b":"B", "c":"C"]
print(strDictionary3.count)
print(strDictionary3["c"])

if let value = strDictionary3["d"] {
    print(value)
} else {
    print("not found")
}

for (key, value) in strDictionary3 {
    print("dict: \(key):\(value)")
}

strDictionary3["x"] = "X"
print(strDictionary3)

strDictionary3.removeValueForKey("b")
print(strDictionary3)

let tuplel = (1, 2, 3)
let tuplel2 = (100000, "ほげほげ")
print(tuplel2.0)
print(tuplel2.1)

var (code, address) = tuplel2;
print(code)
print(address)

let tuplel3 = ( code:100000, address:"ほげほげ" )
print(tuplel3.code)
print(tuplel3.address)

func showHello() {
    print("Hello")
}
showHello()

func showHello2(name:String) {
    print("\(name)san Hello")
}
showHello2("momo")

func calcBMI(name:String, height:Double, weight:Double) {
    let heightM = height / 100.0
    let BMI:Double = weight / (heightM * heightM)
    print("\(name) san BMI \(BMI)")
}
calcBMI("Apple", height: 171, weight: 64.5)

func returnHello(name:String) -> String {
    let message = "\(name) san Hello"
    return message
}
let hello = returnHello("Apple")

func calcTax(price:Double) -> (Double, Double) {
    let tax = price * 0.08
    let includingtax = price * 1.08
    return (tax, includingtax)
}

let (tax, includingtax) = calcTax(300)
print(tax)
print(includingtax)

var testInt2:Int? = nil
var testInt3:Int? = 10
var testInt4:Int? = testInt3! + 30

var testInt5:Int! = testInt3
var testInt6 = testInt5 + 30


var testInt10:Int? = 10
if let temp = testInt10 {
    print(temp)
}


func testGuard(testInt:Int?) {
    guard let temp = testInt else {
        return
    }
    print(temp)
}
var testInt11:Int? = 20
testGuard(testInt11)
testGuard(nil)

var tsetString10 = "100"
var testInt12:Int? = Int(tsetString10)
if let temp = testInt12 {
    print (temp)
}


class calcPrice {
    var price:Double = 0
    
    func getTax() -> Double {
        return price * 0.08
    }
    
    func getIncludeTax() -> Double {
        return price * 1.08
    }
}

let apple = calcPrice()
apple.price = 300
print(apple.getTax())
print(apple.getIncludeTax())

let switch1 = UISwitch()
switch1.on = true


class customSwitch:UISwitch {
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.onTintColor = UIColor.redColor()
    }
}

let switch2 = customSwitch()
switch2.on = true

let myLabel = UILabel()
myLabel.text = "HogeHoge"
myLabel.textColor = UIColor.blueColor()
myLabel.backgroundColor = UIColor.cyanColor()
myLabel.textAlignment = NSTextAlignment.Center
myLabel.font = UIFont.systemFontOfSize(20)
myLabel.numberOfLines = 0
if let text = myLabel.text {
    print(text)
}

let myButton = UIButton()
myButton.setTitle("It Press!", forState: UIControlState.Normal)
myButton.enabled = false
myButton.selected = true

let mySwitch = UISwitch()
mySwitch.on = true
mySwitch.onTintColor = UIColor.redColor()
mySwitch.thumbTintColor = UIColor.yellowColor()

let mySlider = UISlider()
mySlider.minimumValue = 0
mySlider.maximumValue = 100
mySlider.value = 20
mySlider.minimumTrackTintColor = UIColor.blueColor()
mySlider.maximumTrackTintColor = UIColor.redColor()
mySlider.continuous = true

let myTextField = UITextField()
myTextField.text = "Hello"
myTextField.placeholder = "Please Input text..."
myTextField.textColor = UIColor.redColor()
myTextField.backgroundColor = UIColor.cyanColor()
myTextField.textAlignment = NSTextAlignment.Center
myTextField.font = UIFont.systemFontOfSize(24)
myTextField.keyboardType = UIKeyboardType.EmailAddress
myTextField.returnKeyType = UIReturnKeyType.Send
myTextField.resignFirstResponder()

let myTextView = UITextView()
myTextView.text = "Hello"
myTextView.textColor = UIColor.redColor()
myTextView.backgroundColor = UIColor.cyanColor()
myTextView.textAlignment = NSTextAlignment.Center
myTextView.font = UIFont.systemFontOfSize(24)
myTextView.editable = true
myTextView.keyboardType = UIKeyboardType.EmailAddress
myTextView.returnKeyType = UIReturnKeyType.Send
myTextView.resignFirstResponder()

var myImageView = UIImageView()
myImageView.image = UIImage(named: "test.png")
myImageView.contentMode = UIViewContentMode.ScaleToFill

let myWebView = UIWebView()
let stringURL = "https://www.google.co.jp/"
if let url = NSURL(string: stringURL) {
    let urlreq = NSURLRequest(URL: url)
    myWebView.loadRequest(urlreq)
}

let myUIImageView = UIImageView()
let stringURL1 = "https://www.ymori.com/itest/sample.jpg"
if let url = NSURL(string: stringURL1) {
    if let data = NSData(contentsOfURL: url) {
        myUIImageView.image = UIImage(data: data)
    }
}


if let url = NSURL(string: "http://www.ymori.com/itest/test.txt") {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url, completionHandler: {
        (data, response, error) in
        if let nsstr = NSString(data: data!, encoding: NSUTF8StringEncoding) {
            let str = String(nsstr)
            print("string=\(str)")
        }
    })
    task.resume()
}

func onFinish(data: NSData?, res: NSURLResponse?, error: NSError?) {
    if let nsstr = NSString(data: data!, encoding: NSUTF8StringEncoding) {
        let str = String(nsstr)
        print("string=\(str)")
    }
}

if let url = NSURL(string: "http://www.ymori.com/itest/test.txt") {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url, completionHandler: onFinish)
    task.resume()
}

var jsonString1:String  = "[100, 200]"
var jsonData1:NSData! = jsonString1.dataUsingEncoding(NSUTF8StringEncoding)
do {
    var array = try NSJSONSerialization.JSONObjectWithData(
        jsonData1,
        options: NSJSONReadingOptions.MutableContainers) as! NSArray
    print(array)
} catch {
    print("error")
}

var jsonString2:String  = "{\"A\":100, \"B\":200}"
var jsonData2:NSData! = jsonString2.dataUsingEncoding(NSUTF8StringEncoding)
do {
    var dict = try NSJSONSerialization.JSONObjectWithData(
        jsonData2,
        options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
    print(dict)
} catch {
    print("error")
}

func tapTwitter() {
    let cv = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
    cv.setInitialText("つぶやくよ")
    let ctl = UIViewController()
    ctl.presentViewController(cv, animated: true, completion: nil)
}

func tapShare() {
    let shareText = "つぶやくよ"
    let shareItems = [shareText]
    let avc = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
    let ctl = UIViewController()
    ctl.presentViewController(avc, animated: true, completion: nil)
}

