//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Roydon Jeffrey on 6/20/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create a url for the app to work with for collecting data content
        let url = NSURL(string: "https://www.facebook.com")!
        
        //This will simply load the webpage in the webView of the app
        webView.loadRequest(NSURLRequest(URL: url))
        
      
        
// But if I want to retrieve data from the web and manipulate it, then, use the method BELOW
        
//                                  ||
//                                  vv
        
/*
        
        //This creates a web session like opening a browser and get data from the url, response with the necessary content, or throw an error
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            
            //Run the body of the closure when task is completed
            if let urlContent = data {
                
                //Convert data returned into readable HTML content
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                //To force the queue to come to an end and display the content immediately
                dispatch_async(dispatch_get_main_queue(), {
                    
                    //Load the data onto a webView in the app
                    self.webView.loadHTMLString(webContent as! String, baseURL: nil)
                
                })
                
            }else {
                
                //Respond with error message
                print("ERROR, no data found")
                
            }
        }
        task.resume()
 
*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

