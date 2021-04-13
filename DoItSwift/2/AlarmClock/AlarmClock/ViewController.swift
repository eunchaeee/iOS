//
//  ViewController.swift
//  AlarmClock
//
//  Created by 정은채 on 2021/04/13.
//

import UIKit

class ViewController: UIViewController {
    // 타이머가 구동되면 실행할 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime = ""
    var alertFlag = false
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblSelectedTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func pickTime(_ sender: UIDatePicker) {
        let datepickerView = sender     // 전달된 인수 저장
        let formatter = DateFormatter()     // DateFormatter 클래스 상수 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"       // formatter의 dateFormat 속성을 설정
        
        lblSelectedTime.text = "선택시간 : " + formatter.string(from: datepickerView.date)
        // 데이트피커에서 선택한 날짜를 formatter의 dateFormate에서 설정한 포맷대로 string 메서드를 사용하여 문자열(string)으로 변환
        alarmTime = formatter.string(from: datepickerView.date)
    }
    
    // 타이머가 구동된 후 정해진 시간이 되었을 때 실행할 함수
    @objc func updateTime() {
        // count값을 문자열로 변환하여 lblCurrentTime.text에 출력
        // lblCurrentTime.text = String(count)
        // count += 1
        
        let date = NSDate()     // 현재 시간을 가져옴
        
        // DataFormatter라는 클래스의 상수 formatter를 선언
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        var currentTimeString = ""
        currentTimeString = formatter.string(from: date as Date)
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        if currentTimeString == alarmTime {
            if !alertFlag {
                let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
                alarmAlert.addAction(okAction)
                present(alarmAlert, animated: true, completion: nil)
                alertFlag = true
            }
            else {
                alertFlag = false
            }

        }
    }
}

