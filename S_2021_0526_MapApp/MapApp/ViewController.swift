//
//  ViewController.swift
//  MapApp
//
//  Created by 岡崎流依 on 2021/05/26.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate, SearchLocationDelegate {


    @IBOutlet var longPress: UILongPressGestureRecognizer!
    @IBOutlet weak var mapView: MKMapView!
    var locManager:CLLocationManager!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var addressString:String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 20
        
    }

    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
//        tapを開始した
            
        } else if sender.state == .ended {
//        tapを終了した
            
            let tapPoint = sender.location(in: view)
//        タップした位置(CGPoint)を指定してMKMapView上の緯度経度を取得する。
            let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
            let lat = center.latitude
            let log = center.longitude
            
//            緯度経度から住所に変換する
            convert(lat: lat, log: log)
            
        }
        
    }
    
    func convert(lat:CLLocationDegrees, log:CLLocationDegrees) {
        
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: log)
        
//      クロージャー
        geocoder.reverseGeocodeLocation(location) {
            (placeMark, error) in
            
            if let placeMark = placeMark {
                if let pm = placeMark.first {
                    if pm.administrativeArea != nil && pm.locality != nil {
                        self.addressString = pm.name! + pm.administrativeArea! + pm.locality!
                    } else {
                        self.addressString = pm.name!
                    }
                    
                    self.addressLabel.text = self.addressString
                    
                }
            }
            
        }
        
    }
    
    
    @IBAction func nextButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            
            let nextVC = segue.destination
             as! NextViewController
            nextVC.delegate = self
            
        }
    }
    
    
    func searchLocation(latValue: String, logValue: String) {
        if latValue.isEmpty != true && logValue.isEmpty != true {
            let latString = latValue
            let logString = logValue
//          緯度経度からコーディネート
            let coordinate = CLLocationCoordinate2DMake(Double(latString)!, Double(logString)!)
            
//          表示する範囲を指定する
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            
//          領域を指定する
            let region = MKCoordinateRegion(center: coordinate, span: span)
            
//          領域をmapViewに設定
            mapView.setRegion(region, animated: true)
            
//          緯度経度から住所へ変換する
            convert(lat: Double(latString)!, log: Double(logString)!)
            
//          ラベルに表示する
            addressLabel.text = addressString
            
        } else {
            addressLabel.text = "表示できません"
        }
    }
    
}

