//
//  Lit.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import Foundation
import MapKit
import CardStack

struct Lit: Codable, Identifiable, CardData {
    var name : String
    var desc : String
    var lit : String
    var image : String
    var id = UUID().uuidString
}

// About Lit Data --->

let wc = "A mild traumatic brain injury (mTBI) or concussion is a form of traumatic brain injury that is caused by a blow to the head or body, that shakes the brain within the skull. Despite cuts or bruises on the head or face, there may be no other visible signs of a brain injury.\n\nA physician, nurse practitioner or a neuropsychologist are qualified to diagnose you with a concussion. Magnetic Resonance Imaging (MRI) and Computed Tomography (CT) are not routinely conducted unless there are signs of a severe injury. Additionally, imaging tests have other risks from sedation or exposure to radiation."

let ss = "Symptoms of a concussion fit into three categories: physical, cognitive and mood. Below are a few of the common symptoms.\n\n\u{2022} Headache\n\u{2022} Nausea\n\u{2022} Dizziness\n\u{2022} Feeling tired or slow\n\u{2022} Sleeping more than usual\n\u{2022} Being irritable, having mood swings\n\u{2022} Feeling somewhat sad or down"

let we = "Recovering from a concussion can take 1 to 3 months, but this varies based on a variety of factors. For example, age, sex, previous concussion history can impact the amount of time it takes you to recover.\n\nIt is important to note that your symptoms may reappear or worsen with mental and/or physical activity. This is because the brain becomes more sensitive to dehydration and low/high blood pressure due to disrupted blood flow after injury."

let rf = "Call 911 or go to the hospital right away for any of these possible life-threatening issues:\n\n\u{2022} Will not wake up or is very hard to wake up\n\u{2022} More confused, restless, or agitated\n\u{2022} Less alert\n\u{2022} Worst headache you’ve ever had\n\u{2022} Blood or fluid is coming from the nose or ears\n\u{2022} Bruising around the eyes or ears\n\u{2022} Loss of vision, blurry vision, or double vision\n\u{2022} Slurred speech or trouble speaking\n\u{2022} Sudden weakness on one side of the body\n\u{2022} Vomiting 3 or more times\n\u{2022} Seizure activity (such as abnormal movements, loss of consciousness, loss of bowel or bladder control)"

let im = "Physical and mental rest for the first 24-48 hours after your injury is critical. If you are not experiencing symptoms after 24 hours, you can gradually return to your daily activities.Be sure to take care of your basic needs and follow Tips for Dealing with Your Concussion.In the initial 24-28 hours it is important to:\n\n\u{2022} Manage stress, do things that help you relax\n\u{2022} Reduce exposure to electronics\n\u{2022} Avoid activities that could cause re-injury\n\u{2022} Don’t drive, ride a bike, or operate machinery until approved by your doctor\n\u{2022} Do not take drugs or supplements not recommended or prescribed by your doctor"

let tdc = "Sleep\n\u{2022} Go to bed and wake up at the same time everyday\n\u{2022} Avoid napping during the day\n\nEating Regular Meals\n\u{2022} Try not to skip meals and eat at regular times\n\u{2022} Have protein at every meal\n\nStay hydrated\n\u{2022} Drink 4 to 6 glasses of water every day\n\u{2022} Avoid drinking alcohol\n\u{2022} Avoid caffeine in coffee, tea, or soft-drinks, and diet drinks that contain aspartame\n\u{2022} If you are a regular caffeine drinker, stopping suddenly could trigger a headache\n\nGet regular exercise\n\u{2022} If your primary healthcare provider says you can start to exercise, go for a brisk walk, go swimming, or use an exercise machine daily\n\u{2022} Start slowly and increase your effort gradually\n\u{2022} If exercise triggers a headache, reduce your effort or try a different activity"

// <--- About Lit Data

// Manage Lit Data --->

let da = "Make sure you are not returning to activities too soon. Returning or worsening symptoms is an indication that you are over-exerting yourself. If this occurs, make sure to stop or reduce the amount of activity.\n\n\u{2022} Return to activities that do NOT cause symptoms to worsen\n\u{2022} Plan your day to conserve your physical and cognitive energy\n\u{2022} Avoid any activity that could increase risk for re-injury, especially in the first 7-10 days of recovery\n\u{2022} See your primary healthcare provider again if symptoms can't be managed"

let ws = "It is common to have temporary worsening of symptoms after you increase your activity. If you experience worsening symptoms, this means you should slow down your return to work or school.\n\n\u{2022} Most people can return to work (or other activities) within 1 to 2 weeks after the injury\n\u{2022} Plan your return to regular activities while considering both cognitive and physical activity load\n\u{2022} Begin your return to school or work with half days, then gradually increasing workload in a stepwise manner\n\u{2022} Monitor your tolerance level for both cognitive and physical activity\n\u{2022} If any activity causes the onset of new or existing symptoms, reduce your effort for a short period (ie. 15 minutes), and gradually resume the activity for a shorter period of time\n\u{2022} Take frequent breaks initially and gradually reduce the number of breaks needed\n\u{2022} Speak to your doctor about any concerns you have regarding return to work or possible workplace accommodations"

let sp = "It is important to remain symptom-free for 24 hours at the current level of activity before moving on to the next step. If one or more symptoms return, you need to go back to the previous level of activity with no symptoms for at least 24 hours before trying to do more. It is important to remember that returning to physical activity is done in a stepwise, gradual manner.\n\n1. Limited activity - participate in daily activities as long as symptoms do not worsen.\n2. Light aerobic activity - examples include walking, swimming, or other exercise where maximum heart rate is below 70% (no resistance training is included in this step).\n3. Sport-specific exercise - this could include skating drills or running drills (depending on the sport)\n  a.No head impact\n  b.Increase aerobic intensity\n4. Non-contact training - more complex training drills involving coordination and thinking.\n  a.Incorporating light resistance training can begin at this stage\n5. Full-contact practice - participate in normal training sessions\n6. Return to play - This is the final step and allows the athlete to join in normal game play\n\nA doctor must always make the final decision about whether you are ready to return to full-contact play."

// <--- Manage Lit Data

// Test Data --->

let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let shortlorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let appointment = "Appointment tomorrow with Dr. Appleseed."

let region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(
        latitude: 51.065307,
        longitude: -114.133691
    ),
    span: MKCoordinateSpan(
        latitudeDelta: 0.03,
        longitudeDelta: 0.03
    )
)

// <--- Test Data

let testDataAbout = [
    Lit(name: "What's a Concussion?", desc: "A short description of a concussion", lit: wc, image: "What's a Concussion?"),
    Lit(name: "Signs and Symptoms", desc: "These are the tell-tale signs of a concussion.", lit: ss, image: "Signs and Symptoms"),
    Lit(name: "What to Expect", desc: "What most people go through.", lit: we, image: "What to Expect"),
    Lit(name: "Red Flags", desc: "Must know symptoms that needs immediate medical attention.", lit: rf, image: "Red Flags"),
    Lit(name: "Initial management", desc: "What should be done in the first hours of a concussion.", lit: im, image: "Initial Management"),
    Lit(name: "Tips", desc: "Helpful pointers on dealing with your concussion.", lit: tdc, image: "Management Tips")
]

let testDataManage = [
    Lit(name: "Manage", desc: "hello", lit: lorem, image: "What's a Concussion?"),
    Lit(name: "Hello", desc: "hello", lit: lorem, image: "What's a Concussion?")
]

