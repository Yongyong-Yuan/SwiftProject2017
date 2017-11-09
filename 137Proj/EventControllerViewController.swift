//
//  EventControllerViewController.swift
//  137Proj
//
//  Created by ryannn on 10/10/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import UIKit
import EventKit

class EventControllerViewController: UIViewController {
/*
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
*/
    @IBOutlet weak var StartDate: UIDatePicker!
    @IBOutlet weak var EndDate: UIDatePicker!
    @IBOutlet weak var EventName: UITextField!
    
    @IBAction func AddTo(_ sender: UIButton) {
        let eventStore:EKEventStore = EKEventStore()
        
        eventStore.requestAccess(to: .event)  { (authorized, error) in

                let event:EKEvent = EKEvent(eventStore: eventStore)
                event.title = self.EventName.text ?? "No name Entered"
                event.startDate = self.StartDate.date
                event.endDate = self.EndDate.date
                event.notes = "For testing purpose!!"
                event.calendar = eventStore.defaultCalendarForNewEvents
                do{
                    try eventStore.save(event, span: .thisEvent)
                }catch {
                    
                }
                
            
        
        }
    }
   

}
